#include  <QObject>
#include  "MyObject.h"
extern MyObject obj;
extern QObject *RootObject;


void BindSingals()
{
    auto * ButtonAutoFocus = RootObject->findChild<QObject*>("ButtonAutoFocus");
    QObject::connect(ButtonAutoFocus, SIGNAL(clicked()), &obj, SLOT(AutoFocus()), Qt::QueuedConnection);

    auto * ButtonUp = RootObject->findChild<QObject*>("ButtonUp");
    QObject::connect(ButtonUp, SIGNAL(clicked()), &obj, SLOT(Up()), Qt::QueuedConnection);

    auto * ButtonDown = RootObject->findChild<QObject*>("ButtonDown");
    QObject::connect(ButtonDown, SIGNAL(clicked()), &obj, SLOT(Down()), Qt::QueuedConnection);

    auto * ButtonStop = RootObject->findChild<QObject*>("ButtonStop");
    QObject::connect(ButtonStop, SIGNAL(clicked()), &obj, SLOT(Stop()), Qt::QueuedConnection);

    auto * ButtonEmergencyStop = RootObject->findChild<QObject*>("ButtonEMStop");
    QObject::connect(ButtonEmergencyStop, SIGNAL(clicked()), &obj, SLOT(EmergencyStop()), Qt::QueuedConnection);

    auto * ButtonSetZero = RootObject->findChild<QObject*>("ButtonSetZero");
    QObject::connect(ButtonSetZero, SIGNAL(clicked()), &obj, SLOT(SetZero()), Qt::QueuedConnection);

    auto * ButtonSetPos1 = RootObject->findChild<QObject*>("ButtonSetPos1");
    QObject::connect(ButtonSetPos1, SIGNAL(clicked()), &obj, SLOT(SetPos1()), Qt::QueuedConnection);

    auto * ButtonSetPos2 = RootObject->findChild<QObject*>("ButtonSetPos2");
    QObject::connect(ButtonSetPos2, SIGNAL(clicked()), &obj, SLOT(SetPos2()), Qt::QueuedConnection);

    auto * ButtonZeroPointCalibration = RootObject->findChild<QObject*>("ButtonZeroPointCalibration");
    QObject::connect(ButtonZeroPointCalibration, SIGNAL(clicked()), &obj, SLOT(ZeroPointCalibration()), Qt::QueuedConnection);

    auto * DistanceCalibration = RootObject->findChild<QObject*>("DistanceCalibration");
    QObject::connect(DistanceCalibration, SIGNAL(clicked()), &obj, SLOT(DistanceCalibration()), Qt::QueuedConnection);

    auto * ButtonLinearCalibration = RootObject->findChild<QObject*>("ButtonLinearCalibration");
    QObject::connect(ButtonLinearCalibration, SIGNAL(clicked()), &obj, SLOT(LinearCalibration()), Qt::QueuedConnection);

    auto * ButtonSaveFocusParams = RootObject->findChild<QObject*>("ButtonSaveFocusParams");
    QObject::connect(ButtonSaveFocusParams, SIGNAL(clicked()), &obj, SLOT(SaveFocusParams()), Qt::QueuedConnection);

    auto * ButtonSaveCommParams = RootObject->findChild<QObject*>("ButtonSaveCommParams");
    QObject::connect(ButtonSaveCommParams, SIGNAL(clicked()), &obj, SLOT(SaveCommParams()), Qt::QueuedConnection);

    auto * ButtonSaveSensorParams = RootObject->findChild<QObject*>("ButtonSaveSensorParams");
    QObject::connect(ButtonSaveSensorParams, SIGNAL(clicked()), &obj, SLOT(SaveSensorParams()), Qt::QueuedConnection);

    auto * ButtonAutoMode = RootObject->findChild<QObject*>("ButtonAutoMode");
    QObject::connect(ButtonAutoMode, SIGNAL(clicked()), &obj, SLOT(AutoMode()), Qt::QueuedConnection);

    auto * ButtonHandMode = RootObject->findChild<QObject*>("ButtonHandMode");
    QObject::connect(ButtonHandMode, SIGNAL(clicked()), &obj, SLOT(HandMode()), Qt::QueuedConnection);
}