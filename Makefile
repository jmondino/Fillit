#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmondino <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/31 14:07:21 by jmondino          #+#    #+#              #
#    Updated: 2020/06/13 15:09:07 by jmondino         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = fillit

SRC = src/misc.c\
	src/backtracking.c\
	src/check.c\
	src/checkform.c\
	src/create_ttrm.c\
	src/adaptation.c\
	src/place_ttrm.c\
	src/functions.c\
	src/functions2.c\
	src/functions3.c\
	src/get_next_line.c\
	src/main.c\

OBJ = $(SRC:.c=.o)

FLAGS = -Wextra -Wall -Werror -g

all:$(NAME)

$(NAME): $(OBJ)
	gcc $(FLAGS) -o $(NAME) $(OBJ)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
