#include <stdio.h>
#include <stdlib.h>
#include <memory.h>

extern size_t ft_strlen(const char *s);
extern  char *ft_strcpy(char * dst, const char * src);
extern  int ft_strcmp(const char *s1, const char *s2);


int main() {
/*
    printf("----------------------- ft_strlen ----------------------- \n");

    printf("%lu\n", strlen("Hello, assembly JEFW\n"));
    printf("%lu\n", ft_strlen("Hello, assembly JEFW\n"));

    printf("----------------------- ft_strcpy ----------------------- \n");

    char *src = "|Hello, assembly JEFW|\n";
    char *dst = malloc((strlen(src) + 1) * sizeof(char));
    char *dst1 = malloc((strlen(src) + 1) * sizeof(char));

    printf("dst1: %s\n", ft_strcpy(dst1, src));
    printf("dst: %s\n", strcpy(dst, src));

*/
    printf("----------------------- ft_strcmp ----------------------- \n");

    const char *str1 = "H";
    const char *str2 = "H";

    printf("%d\n", strcmp(str1, str2));
    printf("%d\n", ft_strcmp(str1, str2));
    return 0;
}
