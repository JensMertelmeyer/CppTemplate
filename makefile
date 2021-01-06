makefiletest: program.cpp ./src/Utils.Console.cpp
	g++ -std=c++17 -g -Wextra -O0 -o ./bin/main_DEBUG.exe program.cpp ./src/Utils.Console.cpp -Iinclude -Llib