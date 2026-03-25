#include <stdio.h>

int main() {
    FILE *fd = fopen("./numbers.dat", "w");
    if (fd == NULL) {
        printf("Failed to open file");
        return 1;
    }

    for(int i=1; i<2048; i++)   {
        fprintf(fd, "%d\n", i);
    }

    fclose(fd);

    return 0;
}