#include <stdio.h>

extern void asmfunc(int n, double *arr1, int *arr2);

int main()
{
    // Sample
    double vec1[3][3] = {{0.0, 62.5, 10.1},
                         {60.0, 122.3, 5.5},
                         {30.0, 160.7, 7.8}};
    int vec2[3] = {0, 0, 0};

    asmfunc(3, vec1[0], vec2);

    for (int i = 0; i < 3; i++)
        printf("%d\n", vec2[i]);
}