# -*- THIS IS A MAKEFILE -*-

NAME = libasm.a
NASM =  nasm -f macho64
CC = gcc -Wall -Wextra -Werror
SANITIZER = -fsabitize=address

SRCS_PATH = srcs
SRCS_NAMES = ft_strlen

SRC = $(addprefix $(SRC_PATH)/, $(SRC_NAMES))

all: $(NAME)

$(NAME): $(SRC)
	@ $(NASM) $(SRC)
	@ ar rc *.o $(NAME)
	ranlib $(NAME)


clean:
	@ rm *.o

fclean: clean
	@ rm $(NAME)

re: fclean all