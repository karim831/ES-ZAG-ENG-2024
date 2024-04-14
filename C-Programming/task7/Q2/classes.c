#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main(){
    int classes[3][10];
    srand(time(0));
    for(int i=0;i<3;i++){
        for(int j=0;j<10;j++){
            classes[i][j] = rand()%101;
        }
    }
    int num_passed=0,num_failed = 0;
    int highestGrade =0,lowest_grade = 100;
    int sum =0;
    for(int i=0;i<3;i++){
        for(int j=0;j<10;j++){
            sum+=classes[i][j];
            if(classes[i][j]>highestGrade)
                highestGrade = classes[i][j];
            if(classes[i][j]<lowest_grade)
                lowest_grade = classes[i][j];

            if(classes[i][j]>=50)
                num_passed++;
            else
                num_failed++;
        }
    }
    printf("Number of passed students  = %d\n",num_passed);
    printf("Number of Failed students = %d\n",num_failed);
    printf("Highest grade = %d\n",highestGrade);
    printf("Lowest grade = %d\n",lowest_grade);
    printf("Average = %d\n",sum/30);
}
