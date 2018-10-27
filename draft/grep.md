Usage:` grep [OPTION]... PATTERN [FILE]...`  
Search for PATTERN in each FILE.  
Example: `grep -i 'hello world' menu.h main.c`  

Pattern selection and interpretation:
```
  -i, --ignore-case         ignore case distinctions
```

Output control:

```
  -r, --recursive           like --directories=recurse
  -L, --files-without-match  print only names of FILEs with no selected lines
  -l, --files-with-matches  print only names of FILEs with selected lines
  -c, --count               print only a count of selected lines per FILE
```

PATTERN: Regular expression

