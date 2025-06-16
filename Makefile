# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afitri <afitri@student.42kl.edu.my>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/06/10 16:49:52 by afitri            #+#    #+#              #
#    Updated: 2025/06/10 16:50:28 by afitri           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
		ft_memset.c ft_strlen.c ft_bzero.c ft_memcpy.c ft_memmove.c \
		ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
		ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
		ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c \
		ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJS = ${SRCS:.c=.o}

NAME = libft.a

CC = gcc

CFLAGS	= -Wall -Werror -Wextra

$(NAME) : ${OBJS}
		@ar rcs ${NAME} ${OBJS}

all : $(NAME)

bonus : ${OBJS_BONUS}
		ar rcs ${NAME} ${OBJS_BONUS}

%.o : %.c
		@${CC} ${CFLAGS} -c $<

clean :
		@rm -f ${OBJS} ${OBJS_BONUS}

fclean : clean
		@rm -f libft.a

re : fclean all
