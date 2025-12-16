#include "SerialPort.h"
#include "MySeralPortListener.h"
void TestSerialPort() {
    itas109::CSerialPort Handle;

    Handle.init("com1",
        itas109::BaudRate9600,
        itas109::ParityNone,
        itas109::DataBits8,
        itas109::StopOne,
        itas109::FlowNone,
        4096);

    Handle.setOperateMode(itas109::AsynchronousOperate);
    Handle.open();

    if (Handle.isOpen()) {
        MySeralPortListener ReadListener;
        Handle.connectReadEvent(&ReadListener);
    }




    Handle.close();
}