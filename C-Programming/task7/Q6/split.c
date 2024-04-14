#include <stdio.h>
int main(){
    char* string;
    gets(string);
    for(int i=0;string[i]!='\0';i++){
        if(string[i] == ' '){
            printf("\n");
            continue;
        }
        printf("%c",string[i]);
    }
}
