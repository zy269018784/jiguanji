#include "MySeralPortListener.h"
#include <iostream>

void MySeralPortListener::onReadEvent(const char *portName, unsigned int readBufferLen)
{
    std::cout << "read " << readBufferLen << std::endl;

}