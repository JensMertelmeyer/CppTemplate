CC=g++
CFLAGS=-Iinclude -Llib -std=c++17 -g -Wextra -O0
DEPS=include/Utils/Console.hpp

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

makefiletest: program.o Utils.Console.o
	$(CC) $(CFLAGS) -o ./bin/main_DEBUG.exe program.o Utils.Console.o
