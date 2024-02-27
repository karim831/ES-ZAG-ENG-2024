#include <stdio.h>
#include <malloc.h>
#include "main.h"
int main(){
    char* choices = (char*)malloc(sizeof(char)*MAX_QUESTIONS);
    printf("Input key to the item\n");
    for(int i=0;i<MAX_QUESTIONS;i++){
        scanf(" %c",choices+i);
        while(choices[i]<'a' || choices[i]>'d'){
            printf("enter answers between a and d\n");
            scanf(" %c",choices+i);
        }
    }
    char* students = (char*)malloc(sizeof(char)*MAX_QUESTIONS);
    for(int i=0;i<MAX_STUDENTS;i++){
        int score =0;
        printf("Input response of the student-%d\n",i+1);
        for(int j=0;j<MAX_QUESTIONS;j++){    
            scanf(" %c",students+j);
            while(students[j]<'a' || students[j]>'d'){
                printf("enter answers between a and d\n");
                scanf(" %c",students+j);
            }
            if(students[j] == choices[j])
                score++;
        }
        printf("Student-%d\n"
                "Score is %d out of %d\n",
                i+1,score,MAX_QUESTIONS);
        if(score != MAX_QUESTIONS){
            printf("Resoponse to the item below are wrong\n");
            for(int j=0;j<MAX_QUESTIONS;j++){
                if(students[j] != choices[j]){
                    (j != MAX_QUESTIONS-1) ? (printf("%d ",j+1)) : (printf("%d\n",j+1));
                }
            }
        }
    }
    free(choices);
    free(students);
}