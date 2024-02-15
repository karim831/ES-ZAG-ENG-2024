#include <stdio.h>

int main(){
    int x=10,y=11,z=12;
    int *p = (int*)&x,*q = (int*)&y,*r = (int*)&z;

    printf(
        "Before change : \n"
        "the value of x = %d\n"
        "the value of y = %d\n"
        "the value of z = %d\n"

        "the addresse in p = %p\n"
        "the addresse in q = %p\n"
        "the addresse in r = %p\n"

        "the pointer from p = %d\n"
        "the pointer from q = %d\n"
        "the pointer from r = %d\n"

        ,x,y,z,p,q,r,*p,*q,*r
    );

    r = p; p=q; q=r;

    printf(
        "after change : \n"
        "the value of x = %d\n"
        "the value of y = %d\n"
        "the value of z = %d\n"

        "the addresse in p = %p\n"
        "the addresse in q = %p\n"
        "the addresse in r = %p\n"

        "the pointer from p = %d\n"
        "the pointer from q = %d\n"
        "the pointer from r = %d\n"

        ,x,y,z,p,q,r,*p,*q,*r
    );


    return 0;
}