# -*- THIS IS A MAKEFILE -*-

NAME = libasm.a
NASM =  nasm -f macho64
CC = gcc -Wall -Wextra -Werror

OBJS_NAMES = ft_strcmp.o ft_strcpy.o ft_strlen.o ft_write.o ft_read.o ft_strdup.o


all: $(NAME)

$(NAME): $(SRC)
	@ $(NASM) ft_strcmp.s
	@ $(NASM) ft_strcpy.s
	@ $(NASM) ft_strlen.s
	@ $(NASM) ft_write.s
	@ $(NASM) ft_read.s
	@ $(NASM) ft_strdup.s
	@ ar rc $(NAME) $(OBJS_NAMES)
	@ ranlib $(NAME)

build:
	@ gcc main.c $(NAME) && ./a.out

clean:
	@ rm -rf $(OBJS_NAMES)

fclean: clean
	@ rm -rf $(NAME)
	@ rm -rf a.out

re: fclean all
