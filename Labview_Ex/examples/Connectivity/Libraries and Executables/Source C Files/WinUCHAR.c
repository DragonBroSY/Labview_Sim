#include "extcode.h"
#include <windows.h>

_declspec(dllexport) void WinUCHAR(UCHAR *input, PUCHAR output);
_declspec(dllexport) void WinUCHAR(UCHAR *input, PUCHAR output)
{
  size_t i, j;

  /* Reverse "i" characters. Assume output already has memory. */
  for(i = strlen(input), j = 0; i > 0; j++)
  {
    output[j] = input[--i];
  }
}
