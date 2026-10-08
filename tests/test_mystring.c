#include <assert.h>
#include <stdio.h>
#include <string.h>
#include "mystring.h"

static void test_strlen(void){
    assert(my_strlen("") == 0);
    assert(my_strlen("hello") == strlen("hello"));
}

int main(){
    test_strlen();
    printf("All tests passed!\n");
    
    return 0;
}