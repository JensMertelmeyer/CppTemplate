CC=g++
CFLAGS=-Iinclude -Llib -std=c++17 -g -Wextra -O0
IDIR = ./include

_DEPS= Utils/Console.hpp
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))
# $(info deps: "$(DEPS)")

ODIR=./obj


_OBJ=program.o Utils.Console.o
OBJ=$(patsubst %,$(ODIR)/%,$(_OBJ))
# $(info _obj: $(_OBJ))
# $(info obj: "$(OBJ)")


$(ODIR)/%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

makefiletest: $(OBJ)	
	$(CC) -o ./bin/main_DEBUG.exe $^ $(CFLAGS)
