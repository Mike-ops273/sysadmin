#include <stdio.h> 

/* print the value of EOF */ 
main() 
{
    int c; 

    while ((c = getchar()) != EOF) {
        printf("%i\n", EOF);
    }
}