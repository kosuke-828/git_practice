#include <stdio.h>
#include "message.h"

int main()
{
    int count = 3;

    printf("C Make Practice\n");
    printf("count = %d\n", count);

    print_message();

    count = count + 1;
    printf("count = %d\n", count);

    return 0;
}