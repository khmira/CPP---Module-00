NAME = megaphone

SRCS = megaphone.cpp

FLAGS = -Wall -Wextra -Werror -c -std=c++98

OBJS = $(SRCS:.c=.o)

#INC = 

CC = g++

all: $(NAME)

$(NAME): $(SRCS)
	@$(CC) $(FLAGS) $(SRCS)
	@$(CC) $(OBJS) -o $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all