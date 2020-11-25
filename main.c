#include <stdio.h>
#include <memory.h>

extern size_t ft_strlen(const char *s);

int main() {
    //ft_strlen("Hello, World\n");
    printf("%lu\n", strlen("fdjvgdagj;adgja;egj  fgja ejgojag;   ofjoewjO JEFW"));
    printf("%lu\n", ft_strlen("fdjvgdagj;adgja;egj  fgja ejgojag;   ofjoewjO JEFW"));
    return 0;
}
