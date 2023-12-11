#include <stdio.h>
int main(){
    char* string;
    scanf("%s",string);
    int digits[10] = {0};
    for(int i=0;string[i]!='\0';i++){
        if(string[i]>='0' && string[i]<='9'){
            digits[string[i]-'0']++;
        }
    }
    for(int i=0;i<10;i++){
        printf("%d",digits[i]);
    }
}
