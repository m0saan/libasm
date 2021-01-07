# -*- THIS IS A MAKEFILE -*-

NAME = libasm.a
NASM =  nasm -f macho64
CC = gcc -Wall -Wextra -Werror
SANITIZER = -fsabitize=address

SRCS_PATH = srcs/
OBJS_PATH = objs/
SRCS_NAMES = ft_strcmp.s ft_strcpy.s ft_strlen.s ft_write.s ft_read.s ft_strdup.s
OBJS_NAMES = ft_strcmp.o ft_strcpy.o ft_strlen.o ft_write.o ft_read.o ft_strdup.o

SRC = $(addprefix $(SRCS_PATH), $(SRCS_NAMES))
OBJ = $(addprefix $(OBJS_PATH), $(OBJS_NAMES))

all: $(NAME)

$(NAME): $(SRC)
	@ $(NASM) srcs/ft_strcmp.s
	@ $(NASM) srcs/ft_strcpy.s
	@ $(NASM) srcs/ft_strlen.s
	@ $(NASM) srcs/ft_write.s
	@ $(NASM) srcs/ft_read.s
	@ $(NASM) srcs/ft_strdup.s
	@ mkdir -p objs
	@ mv srcs/*.o $(OBJS_PATH)
	@ ar rc $(NAME) $(OBJ)
	@ ranlib $(NAME)

build:
	@ gcc main.c $(NAME) && ./a.out

clean:
	@ rm -rf $(OBJ)

fclean: clean
	@ rm -rf $(NAME)
	@ rm -rf a.out

re: fclean all
