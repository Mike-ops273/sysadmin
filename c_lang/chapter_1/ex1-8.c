#include <stdio.h> 

/* count blanks, tabs, and newlines */ 
main() 
{
  int c;            /* input */ 
  int b, t, nl;     /* blanks, tabs, newlines*/ 
  b = 0; 
  t = 0; 
  nl = 0;

  while((c=getchar()) != EOF) {
    if(c==' ') 
      b++; 
    else if(c=='\t') 
      t++; 
    else if(c=='\n') 
      nl++;  
  } 
  printf("%d %d %d\n", b, t, nl);
}