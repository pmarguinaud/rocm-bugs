#define _GNU_SOURCE
#include <fenv.h>

int main ()
{
  feenableexcept (FE_INVALID | FE_DIVBYZERO | FE_OVERFLOW);
  return 0;
}

