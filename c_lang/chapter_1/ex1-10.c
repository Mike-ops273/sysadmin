#include <stdio.h> 

main() 
{
    int c; 

    while((c=getchar()) != EOF) {
        if (c == '\t') 
            printf("\\t"); 
        if (c == '\b')          // backslash input buffering - switch to stty raw
            printf("\\b"); 
        if (c == '\\') 
            printf("\\");
    }
}