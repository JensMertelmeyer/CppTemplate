CC=g++
CFLAGS=-Iinclude -Llib -std=c++17 -g -Wextra -O0
DEPS=include/Utils/Console.hpp
OBJ=program.o Utils.Console.o


%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

makefiletest: $(OBJ)
	$(CC) $(CFLAGS) -o ./bin/main_DEBUG.exe $^ $(CFLAGS)
