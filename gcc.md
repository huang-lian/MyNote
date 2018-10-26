gcc --help

Usage:

`gcc [options] file ....`

Options
```
  -E                       Preprocess only; do not compile, assemble or link.
  -S                       Compile only; do not assemble or link.
  -c                       Compile and assemble, but do not link.
  -o <file>                Place the output into <file>.
  -I <dir>                 Add <dir> to the end of the main include path.
  -D<macro>[=<val>]        Define a <macro> with <val> as its value.  If just <macro> is given, <val> is taken to be 1.
  -m16                     Generate 16bit i386 code.
  -m32                     Generate 32bit i386 code.
  -m64                     Generate 64bit x86-64 code.
  -O<number>               Set optimization level to <number>.
  -Wall                    Enable most warning messages.
```
