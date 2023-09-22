NAME	= push_swap

SRCS	= free.c		\
		  ft_atoi.c		\
		  grouping.c	\
		  main.c		\
		  max_to_a.c	\
		  pre_sort.c	\
		  push_swap.c	\
		  sort.c		\
		  tool_push.c	\
		  tool_r.c		\
		  tool_rrev.c	\
		  tool_s.c		\

INCLUDE_DIR = include
SRCDIR = ./srcs/
OBJDIR = ./obj/

OBJS = $(SRCS:%.c=$(OBJDIR)%.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror -I $(INCLUDE_DIR)

all: $(OBJDIR) $(NAME)

$(NAME): $(OBJDIR) $(OBJS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)%.o: $(SRCDIR)%.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re