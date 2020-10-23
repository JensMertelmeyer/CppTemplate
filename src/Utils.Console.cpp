#include <iostream>
#include <string>

namespace Utils {
	namespace Console {
		void Pause() {
			std::cout 
				<< "Press enter to continue..." 
				<< std::endl 
				<< std::flush;
			std::cin.ignore();
		};
	}
}