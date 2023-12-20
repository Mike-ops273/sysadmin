#include <stdio.h> 

/* verify that the expression getchar()!=EOF is 1 or 0 */
main() 
{ 
    int c; 

    while ((c = getchar()) != EOF) {
        printf("%i\n", getchar()!=EOF);
    }
}