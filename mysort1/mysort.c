#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>

#undef MAX
#define MAX(a,b) ( ((a) > (b)) ? (a) :  (b) )

#define ALLOC(x,size) { \
  long long int _nbytes = MAX(1,(size)) * sizeof(*(x)); \
  x = malloc(_nbytes); \
  if (!x) { \
    fprintf(stderr,"***Error: Unable to ALLOCate %lld bytes at %s:%d\n",\
            _nbytes, __FILE__, __LINE__); \
    abort(); \
  } \
}

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
  char *output_file = NULL;
  char *input_file = NULL;
  
  for (j=0; !errflg && j<argc; ) {
    char *opt = argv[j];
    int pos1 = atoi(opt+1)+1;
    int pos2 = pos1;

    int len = 100;
    ALLOC(new_argv[jn], len);
    snprintf(new_argv[jn++], len, "-k%d,%d",pos1,pos2);

    ++j;
  }

  return errflg;

}

