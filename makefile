CC=g++
CFLAGS=-Iinclude -Llib -std=c++17 -g -Wextra -O0

makefiletest: program.o Utils.Console.o
	$(CC) -o ./bin/main_DEBUG.exe program.o Utils.Console.o
