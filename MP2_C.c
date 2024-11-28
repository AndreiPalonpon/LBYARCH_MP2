#include <stdio.h>
#include <stdlib.h>
#include <time.h>

extern void asmfunc(int n, double *arr1, int *arr2);

int main()
{
    // Sample
    int n;
    scanf("%d", &n);

    double *vec1 = (double *)calloc(n * 3, sizeof(double));
    int *vec2 = (int *)calloc(n, sizeof(int));

    for (int i = 0; i < n; i++)
    {
        scanf("%lf %lf %lf", (vec1 + 3 * i), (vec1 + 3 * i + 1), (vec1 + 3 * i + 2));
    }

    clock_t start = clock();

    asmfunc(n, vec1, vec2);

    clock_t end = clock();

    for (int i = 0; i < n; i++)
        printf("%d\n", vec2[i]);

    free(vec1);
    free(vec2);

    double exec_time = (double)(end - start) / CLOCKS_PER_SEC;
    printf("Total Execution Time: %d seconds\n", exec_time);
}
