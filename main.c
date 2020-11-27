#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <memory.h>

extern size_t ft_strlen(const char *s);
extern char *ft_strcpy(char * dst, const char * src);
extern int ft_strcmp(const char *s1, const char *s2);
extern size_t ft_write(int fil_des, const void *buf, size_t n_byte);
extern size_t ft_read(int fil_des, void *buf, size_t n_byte);
extern char *ft_strdup(const char *s1);

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
    const char *str2 = "Hss";

    const char *s1 = "bon";
    const char *s2 =  "";

    printf("%d\n", strcmp(s1, s2));
    printf("%d\n", ft_strcmp(s1, s2));
/*
    printf("----------------------- ft_write ----------------------- \n");

    const char *s1 = "";
    const char *s2 = "Print this string to the standard output\n";

    //printf("%zu\n", write(1, s2, -1));
    //printf("Errno: %d\n", errno);
    //printf("Error: %s\n", strerror(errno));

    */

/*----------------------------------------------------------------------------------*/

    //printf("%zu\n", ft_write(1, s2, -1));
    //printf("Errno: %d\n", errno);
    //printf("Error: %s\n", strerror(errno));

    //const char *s2 = "Duplicate this string\n";
    //char *rslt = (char*) malloc(sizeof(char) * strlen(s2) + 1);
    //rslt = ft_strdup(s2);
    //printf("%s\n", rslt);
    //return 0;
}