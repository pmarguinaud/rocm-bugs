#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <ctype.h>

int main (int argc, char *argv[])
{

  int j, jn;
  char **new_argv = NULL;

  for (j = 0; j < argc; j++) 
    {
      char *opt = argv[j];
      int pos1 = atoi(opt+1)+1;
      int pos2 = pos1;
   
      int len = 100;
      { 
        long long int _nbytes = ( ((1) > ((len))) ? (1) : ((len)) ) * sizeof(*(new_argv[jn])); 
        new_argv[jn] = malloc (_nbytes); 
        if (! new_argv[jn]) 
          abort(); 
      }
      snprintf(new_argv[jn++], len, "-k%d,%d",pos1,pos2);
    }

  return 0;
}
