#include <stdio.h>
#include <malloc.h>
#include "main.h"
int main(){
    student_t* students = (student_t*) malloc(sizeof(student_t)*STUDENT_MAX_NUMBER);
    for(int i=0;i<STUDENT_MAX_NUMBER;i++){
        (students+i)->name = (char*) malloc(sizeof(char)*NAME_MAX_CONSTRAINT);
    }
    int students_number =0;
    float average = 0;
    while(students_number<STUDENT_MAX_NUMBER){
        printf("Enter student name : ");
        scanf("%s",(students+students_number)->name);
        printf("Enter student score : ");
        scanf("%f",&((students+(students_number))->score));
        average += (students+(students_number++))->score;
        int number;
        printf("More data? -1 to stop, others to continue: ");
        scanf("%d",&number);
        if(number == -1)
            break;
    }
    average /= students_number;
    printf("\n=========================REPORT=========================\n"
        "Student Name\tScore\n"
        "------------\t-----\n");
    for(int i=0;i<students_number;i++){
        printf("%s\t\t%.2f\n",(students+i)->name,(students+i)->score);
    }   
    printf("\nThe number of student is %d\n"
            "The average score for this class is %.2f\n",
            students_number,average);
    
    printf("\n========================================================\n"
        "Below The average students! Work Harder!\n"
        "========================================================\n\n"
        "Student Name\tScore\n"
        "------------\t-----\n");
    for(int i=0;i<students_number;i++){
        if((students+i)->score < average)
            printf("%s\t\t%.2f\n",(students+i)->name,(students+i)->score);
    }
    printf("\n========================================================\n"
        "Top Scorer Student! Congratulation!\n"
        "========================================================\n\n"
        "Student Name\tScore\n"
        "------------\t-----\n");
    for(int i=0;i<students_number;i++){
        if((students+i)->score >= average)
            printf("%s\t\t%.2f\n",(students+i)->name,(students+i)->score);
    }
    for(int i=0;i<STUDENT_MAX_NUMBER;i++){
        free((students+i)->name);
    }
    free(students);
}