#include <stdio.h> 

/* temperature conversion program C to F */ 

/* print Celsius-Fahnrenheit table 
    for celsius = 0, 20, ..., 300; floating-point version  */ 
main () 
{ 
    float celsius, fahr; 
    int lower, upper, step; 

    lower = 0;      /* lower limit of temperature table*/
    upper = 300;    /* upper limit */
    step = 20;      /* step size */  

    celsius = lower; 

    printf("Temperature Conversion Table\n"); 

    while(celsius <= upper) {
        fahr = (celsius * (9.0/5.0)) + 32.0;
        printf("%3.0f %6.1f\n", celsius, fahr); 
        celsius = celsius + step;
    }
}