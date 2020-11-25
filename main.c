#include <stdio.h>
#include <stdlib.h>
#include <memory.h>

extern size_t ft_strlen(const char *s);
extern  char *ft_strcpy(char * dst, const char * src);

int main() {
/*
    printf("----------------------- ft_strlen ----------------------- \n");

    printf("%lu\n", strlen("Hello, assembly JEFW\n"));
    printf("%lu\n", ft_strlen("Hello, assembly JEFW\n"));
*/
    printf("----------------------- ft_strcpy ----------------------- \n");

    char *src = "|Hello, assembly JEFW|\n";
    char *dst = malloc((strlen(src) + 1) * sizeof(char));
    char *dst1 = malloc((strlen(src) + 1) * sizeof(char));

    printf("dst1: %s\n", ft_strcpy(dst1, src));
    printf("dst: %s\n", strcpy(dst, src));
    return 0;
}
