CC = cc
CFLAGS = -Wall -Wextra -Werror

BASICS = src/basics/ft_putchar.c src/basics/ft_putstr.c
STRINGS = src/strings/ft_strlen.c

test_basics:
	$(CC) $(CFLAGS) tests/test_basics.c $(BASICS) -o test_basics

test_strings:
	$(CC) $(CFLAGS) tests/test_strings.c $(BASICS) $(STRINGS) -o test_strings

clean:
	rm -f test_basics test_strings