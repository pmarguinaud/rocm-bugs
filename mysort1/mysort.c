#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>

#undef MAX
#define MAX(a,b) ( ((a) > (b)) ? (a) :  (b) )

typedef          long long int  ll_t;

#define ALLOC(x,size) { \
  ll_t _nbytes = MAX(1,(size)) * sizeof(*(x)); \
  x = malloc(_nbytes); \
  if (!x) { \
    fprintf(stderr,"***Error: Unable to ALLOCate %lld bytes at %s:%d\n",\
            _nbytes, __FILE__, __LINE__); \
    abort(); \
  } \
}

#define CALLOC(x,size) { \
  ll_t _nbytes = MAX(1,(size)) * sizeof(*(x)); \
  ALLOC(x,size); \
  memset(x,0,_nbytes); \
}

#define FREE(x) ((x) ? (free(x), (x) = NULL) : NULL)

#define STRDUP(s) strdup((s) ? (s) : "")


#define strequ(s1,s2)     ((const void *)(s1) && (const void *)(s2) && *(s1) == *(s2) && strcmp(s1,s2) == 0)


#define FLAGS "fK:k:no:ruv"

static int no_ties = 0;
static int ignore_case = 0;

static int 
IsNumber(const char *p) 
{
  int count = 0;
  if (p) {
    while (*p != '\0') {
      if (!isdigit(*p)) {
	count = 0;
	break;
      }
      count++;
      p++;
    }
  }
  return (count > 0) ? 1 : 0;
}


typedef struct _line_t {
  const char *s;
  struct _line_t *next;
} line_t;

typedef struct {
  const char *s;
  double num;
  int j;
  int off;
} str_t;



static int
StrCmp(const str_t *a, const str_t *b)
{
  int a_off = a->off;
  int b_off = b->off;
  int rc = ignore_case ?
    strcmp(a->s+a_off, b->s+b_off) : 
    strcasecmp(a->s+a_off, b->s+b_off);
  if      ( rc > 0 ) return  1;
  else if ( rc < 0 ) return -1;
  else { /* strings are equal --> the original rank-order "j" decides */
    return no_ties ? rc : ((a->j > b->j) ? 1 : -1);
  }
}

static int
StrCmpRev(const str_t *a, const str_t *b)
{
  int a_off = a->off;
  int b_off = b->off;
  int rc = ignore_case ?
    strcmp(a->s+a_off, b->s+b_off) : 
    strcasecmp(a->s+a_off, b->s+b_off);
  if      ( rc < 0 ) return  1;
  else if ( rc > 0 ) return -1;
  else { /* strings are equal --> the original rank-order "j" decides */
    return no_ties ? rc : ((a->j > b->j) ? 1 : -1);
  }
}

static int
NumCmp(const str_t *a, const str_t *b)
{
  if      ( a->num > b->num ) return  1;
  else if ( a->num < b->num ) return -1;
  else { /* numbers are equal --> the remaining line decides */
    return no_ties ? 0 : StrCmp(a,b);
  }
}

static int
NumCmpRev(const str_t *a, const str_t *b)
{
  if      ( a->num < b->num ) return  1;
  else if ( a->num > b->num ) return -1;
  else { /* numbers are equal --> the remaining line decides */
    return no_ties ? 0 : StrCmpRev(a,b);
  }
}

static void
ExtractNumField(int jf, str_t x[], int numlines)
{
  int j;
#if 0
  fprintf(stderr,"ExtractNumField(jf=%d, ..., numlines = %d)\n",jf,numlines);
#endif
  for (j=0; j<numlines; ++j) {
    int nf = 1;
    const char *s = x[j].s;
    while (isspace(*s)) ++s;
    while (nf < jf) {
      int delim = ' ';
      const char *x = (const char *)strchr(s, delim);
      if (x) { ++nf; s = ++x; }
      else { s = NULL; break; }
    }
    if (s && nf == jf) {
      x[j].num = atof(s);
      x[j].off = s - x[j].s;
    }
    else {
      x[j].num = 0;
      x[j].off = 0;
    }
#if 0
    fprintf(stderr,"x[%d].num = %.10g (%s)\n",j,x[j].num, x[j].s + x[j].off);
#endif
  }
}


typedef struct _pos_t {
  int pos1;
  int pos2;
  struct _pos_t *next;
  struct _pos_t *prev;
} pos_t;

int
main(int argc, char *argv[])
{

  int c;
  int errflg = 0;
  int j, jn;
  int new_argc = argc;
  char **new_argv = NULL;
  int numeric = 0;
  int reverse = 0;
  int unique = 0;
  int verbose = 0;
  pos_t *pos = NULL;
  pos_t *this_pos = NULL;
  char *output_file = NULL;
  char *input_file = NULL;
  
  for (j=1; j<argc; ++j) {
    char *opt = argv[j];
    if (strequ(opt,"-v")) {
      verbose = 1;
      break;
    }
  }

  if (verbose) fprintf(stderr,"argc = %d\n", argc);

  CALLOC(new_argv, argc);
  jn = 0;
  for (j=0; !errflg && j<argc; ) {
    char *opt = argv[j];
    if (verbose) fprintf(stderr, "argv[%d] = '%s'\n", j, argv[j]);

    if (*opt == '+' && IsNumber(opt+1)) {
      int pos1 = atoi(opt+1)+1;
      int pos2 = pos1;

      if (j < argc - 1) {
	char *next_opt = argv[j+1];
	if (*next_opt == '-' && IsNumber(next_opt+1)) {
	  pos2 = atoi(next_opt+1)+1;
	  ++j;
	}
      } /* if (j < argc - 1) */

      {
	int len = 100;
	ALLOC(new_argv[jn], len);
	snprintf(new_argv[jn++], len, "-k%d,%d",pos1,pos2);
      }
    }
    else {
      new_argv[jn++] = STRDUP(opt);
    }
    ++j;
  }

  new_argc = jn;

  if (verbose) {
    fprintf(stderr,"new_argc = %d\n", new_argc);
    for (j=0; j<new_argc; ++j) {
      fprintf(stderr, "new_argv[%d] = '%s'\n", j, new_argv[j]);
    }
  }

#ifdef UNDEF

  while (!errflg && (c = getopt(new_argc, new_argv, FLAGS)) != -1) {
    int origin = 0;
    switch (c) {
    case 'f':
      ignore_case = 1;
      break;
    case 'K':
      origin = 1;
      /* Fall through */
    case 'k':
      {
	int pos1, pos2;
	char *comma = strchr(optarg,',');
	int nelem = comma ? 
	  sscanf(optarg,"%d,%d", &pos1, &pos2) :
	  sscanf(optarg,"%d", &pos1);
	int all_ok = (( comma && nelem == 2) ||
		      (!comma && nelem == 1) ) ? 1 : 0;
	if (all_ok) {
	  pos_t *next_pos = NULL;
	  if (nelem == 1) pos2 = pos1;

	  ALLOC(next_pos,1);
	  next_pos->pos1 = origin + pos1;
	  next_pos->pos2 = origin + pos2;
	  next_pos->next = NULL;
	  next_pos->prev = this_pos;

	  if (this_pos) {
	    this_pos->next = next_pos;
	    this_pos = next_pos;
	  }
	  else {
	    pos = this_pos = next_pos;
	  }
	}
	else {
	  fprintf(stderr,"***Error: Syntax of -%c option is : -%cPOS1[,POS2]\n",
		  (c == 'k') ? 'k' : 'K',
		  (c == 'k') ? 'k' : 'K');
	  ++errflg;
	}
      }
      break;
    case 'n':
      numeric = 1;
      break;
    case 'o':
      FREE(output_file);
      output_file = STRDUP(optarg);
      break;
    case 'r':
      reverse = 1;
      break;
    case 'u':
      unique = 1;
      break;
    case 'v':
      verbose = 1;
      break;
    default:
      fprintf(stderr,"***Error: Invalid option '-%c'\n",c);
      ++errflg;
      break;
    } /* switch (c) */
  }

  if (verbose) fprintf(stderr,"optind = %d, new_argc = %d\n",optind,new_argc);

  if (!errflg) {
    if (optind < new_argc) {
      if (optind + 1 == new_argc) input_file = STRDUP(argv[optind]);
      else {
	fprintf(stderr,"***Error: Too many args\n");
	++errflg;
      }
    }
  }

#endif

  return errflg;

}

