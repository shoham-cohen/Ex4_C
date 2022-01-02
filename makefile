CC = gcc
AR = ar
FLAGS= -Wall -Werror -g
all: out 
out: main.o graph.a
	$(CC) $(FLAGS) -o out main.o graph.a
graph.a: graph.o
	$(AR) -rcs graph.a graph.o
main.o: main.c graph.h
	$(CC) $(FLAGS) -c main.c
graph.o: graph.c graph.h
	$(CC) $(FLAGS) -c graph.c

.PHONY: all clean

clean:
	rm -f *.o *.a out
