#include <stdio.h>
#include "main.h"
int main(){
    struct employee_t ahmed = {.salary = 0,.bonus = 0,.deduction = 0};
    struct employee_t amr = {.salary = 0,.bonus = 0,.deduction = 0};
    struct employee_t waleed = {.salary =0,.bonus = 0,.deduction = 0};
    
    struct employee_t employees[3] = {ahmed,amr,waleed};
    char* names [3] = {"Ahmed","Amr","Waleed"};

    int total = 0;
    for(int i=0;i<3;i++){
        printf("Please Enter %s Salary: ",names[i]);
        scanf("%d",&employees[i].salary);
        printf("Please Enter %s Bonus: ",names[i]);
        scanf("%d",&employees[i].bonus);
        printf("Please Enter %s Deduction: ",names[i]);
        scanf("%d",&employees[i].deduction);

        total += employees[i].salary;
        total += employees[i].bonus;
        total -= employees[i].deduction;
    }
    printf("Total Value Needed is %d",total);
    
    return 0;
}