#include <stdio.h>
#include "main.h"
struct product_t update(struct product_t product){
    float price;int quantity;
    printf("Input increament values: price increament and quantity increament\n");
    scanf("%f %d",&price,&quantity);
    product.price += price;
    product.quantity += quantity;
    return product;
}
int main(){
    struct product_t product = {.name = "XYZ",.price = 25.75,.quantity = 12};
    product = update(product);
    printf("Name : %s"  " "
        "Price : %f"    " "
        "Quantity : %d" "\n"
        "value of the items = %f",
        product.name,product.price,product.quantity,
        product.price * product.quantity);
    return 0;
}