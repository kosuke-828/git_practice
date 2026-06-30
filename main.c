#include <stdio.h>
#include "message.h"

int main()
{
    int data[3]={10,20,30};
    int sum = 0;
    printf("C Make Practice\n");
    for (int i=0;i<3;i++){
    sum += data[i];
    printf("i=%d,data=%d,sum=%d",i,data[i],sum);
    }
    print_message();

    return 0;
}