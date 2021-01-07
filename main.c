#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>


extern  int ft_strlen(const char *s);
extern  int ft_strcmp(const char *s1, const char *s2);
extern  char * ft_strcpy(char *dst, const char  *src);
extern  ssize_t ft_write(int fd, const void *s, size_t cont);
extern  ssize_t ft_read(int fd, void *d, size_t cont);
extern  char   *ft_strdup(char *S);

int     main()
{

  printf("-------Ft_Strlen-------------\n\n");

    const char *s = "moboustt@1337.ma kjfjekje v ekjfekrjgekrger erkgkrejgkrjger gerkgjerkgner ";
    const char *s1 = "";
    printf("strlen == > %lu \n", strlen(s));
    printf("ft_strlen == > %d \n", ft_strlen(s));
    
    printf("strlen == > %lu \n", strlen(s1));
    printf("ft_strlen == > %d \n", ft_strlen(s1));
  printf("--------Ft_Strcmp-------------\n\n");
    const char *stc= "YOOO Sessha wa mo DESU";
    const char *stc1= "";
    const char *stc2= "AAAAABBBBCCCCCDDDDD";

  printf("ft_strcmp_v1 === > %d\n", ft_strcmp(stc, stc1));
  printf("strcmp_v1 === > %d\n", strcmp(stc, stc1));

  printf("ft_strcmp_v2 === > %d\n", ft_strcmp(stc, stc));
  printf("strcmp_v2 === > %d\n", strcmp(stc, stc));

  printf("ft_strcmp_v3 === > %d\n", ft_strcmp(stc, stc2));
  printf("strcmp_v3 === > %d\n", strcmp(stc, stc2));

  printf("ft_strcmp_v4 === > %d\n", ft_strcmp(stc1, stc2));
  printf("strcmp_v4 === > %d\n", strcmp(stc1, stc2));

  printf("--------Ft_strcpy------------\n\n");
    const char *src = "kefjkewbf kjbfejkbjkfb";
    char        *dst;
    if (!(dst = (char *) calloc(sizeof(char), 1000)))
      return (-1);
    printf("strcpy_v1 == > %s\n", strcpy(dst, src));
    printf("ft_strcpy_v1 == > %s\n", ft_strcpy(dst, src));

    printf("strcpy_v2 ==> %s\n", strcpy(dst, ""));
    printf("ft_strcpy_v2 ==> %s\n", ft_strcpy(dst, ""));

  printf ("----------FT_write------------------\n\n");

    char *strr = "Hello world\n";
    int i = strlen(strr);
 printf("write return == > %zd errno ==> %d\n", write(-1, strr, i), errno);
printf("write return == > %zd errno ==> %d\n", ft_write(-1, strr, i), errno);

printf("write return == > %zd\n", write(1, strr, i));
printf("write return == > %zd\n", ft_write(1, strr, i));

  printf("-----------Ft_read---------\n\n");
  int fd = open("main.c", O_RDONLY);
  char *str = calloc(sizeof(char) , 1000); 
  printf("==> %zd errno -> %d\n", read(fd, str, 1000), errno);
  printf("==> %zd errno -> %d\n", ft_read(fd, str, 1000), errno);
  free(str);
  printf ("----------Ft_strdup---------------\n\n");
  printf("strdup ==== > %lu\n", strlen(strdup("moboustt")));
  printf("ft_strdup ==== > %lu\n", strlen(ft_strdup("moboustt")));

  printf("strdup ==== > %s\n", strdup("wohfwohfoewhfeowfheowbfeowfeowfeowijfoew"));
  printf("strdup ==== > %s\n", ft_strdup("wohfwohfoewhfeowfheowbfeowfeowfeowijfoew"));

  printf("strdup ===== > %s\n", strdup(""));  
  printf("strdup ===== > %s\n", ft_strdup(""));  
  return (0);
}
