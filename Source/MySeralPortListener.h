//
// Created by zhouyue on 2025/12/16.
//

#ifndef JIGUAN_MYSERALPORTLISTENER_H
#define JIGUAN_MYSERALPORTLISTENER_H
#include  <CSerialPort/SerialPortListener.h>

class MySeralPortListener : public itas109::CSerialPortListener
{
public:
    virtual void onReadEvent(const char *portName, unsigned int readBufferLen) override final;
};


#endif //JIGUAN_MYSERALPORTLISTENER_H