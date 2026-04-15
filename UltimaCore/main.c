#include <stdio.h>

const int COUNT = 4;

float getaverage(int length, int numbers[]);

int main(void) {


    int numbers[COUNT];
    numbers[0] = 56;
    numbers[1] = 67;
    numbers[2] = 14;
    numbers[3] = 99;

    float average = getaverage(COUNT,numbers);

    printf("The average is %.4f", average);

    return 0;
}

float getaverage(int length, int numbers[]) {
    float total = 0;
    for (int i = 0; i < length; i++) {
        total += (float)numbers[i];
    }
    return total / (float)length;
}