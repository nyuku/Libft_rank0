# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: angnguye <angnguye@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/29 13:55:51 by angnguye          #+#    #+#              #
#    Updated: 2022/12/07 21:55:12 by angnguye         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	ft_isalnum.c \
				ft_bzero.c \
				ft_isalpha.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_memset.c \
				ft_strlcat.c \
				ft_strlen.c \
				ft_strlcpy.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_strchr.c \
			   	ft_strrchr.c \
				ft_strncmp.c \
				ft_memcmp.c \
				ft_memchr.c \
				ft_strnstr.c \
				ft_atoi.c \
				ft_calloc.c \
				ft_strdup.c \
				ft_substr.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_itoa.c \
				ft_split.c \
				ft_strmapi.c \
				ft_striteri.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putnbr_fd.c \
				ft_putendl_fd.c 

OBJS		= $(SRCS:.c=.o)
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror
NAME		= libft.a
INC         = -I./
all:			$(NAME)

$(NAME):	$(OBJS)
	ar rcs $(NAME) $(OBJS)
%.o : %.c
	$(CC) $(CFLAGS) $(INC) -c $< -o $@ 

clean:
	rm -f $(OBJS)

fclean: 	clean
	rm -f $(NAME)

re: 		fclean all

norm:
	norminette $(SRCS)

.PHONY: all clean fclean re norm
