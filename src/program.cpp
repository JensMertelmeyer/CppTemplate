#include <iostream>
#include <string>

#include "Utils/Console.hpp"

int main() {
	std::cout << "Hello World" << std::endl;
	Utils::Console::Pause();
	std::cout << "The End.";
}