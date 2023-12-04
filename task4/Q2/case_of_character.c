#include <stdio.h>
int main(){
    printf("enter an alphapetical character and a number respectivly:");
    char character;
    int num;
    scanf("%c %d",&character,&num);
    if(num%2 != 0){
        if(character >='a' && character <='z')
            character-=('a'-'A');
        else if(character >='A' && character <= 'Z')
            character+=('a'-'A');
    }
    printf("Character is %c",character);
}
