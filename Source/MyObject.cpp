#include "MyObject.h"
#include <QObject>
#include <QVariant>
#include <QDebug>
extern QObject *RootObject;
MyObject::MyObject(QObject *Parent) {

}

void MyObject::onButtonClicked()
{
    qDebug() << "onButtonClicked " << QThread::currentThreadId();
}

/*
 * 自动对焦
 */
void MyObject::AutoFocus() {
    qDebug() << "onButtonClicked " << QThread::currentThreadId();
}

/*
 * 停止
 */
void MyObject::Stop() {
    qDebug() << "Stop " << QThread::currentThreadId();
}

/*
 * 紧急停止
 */
void MyObject::EmergencyStop() {
    qDebug() << "EmergencyStop " << QThread::currentThreadId();
}

/*
 * 上
 */
void MyObject::Up() {
    qDebug() << "Up " << QThread::currentThreadId();
}

/*
 * 下
 */
void MyObject::Down() {
    qDebug() << "Down " << QThread::currentThreadId();
}

/*
 * 一键归零
 */
void MyObject::SetZero() {
    qDebug() << "SetZero " << QThread::currentThreadId();
}

/*
 * 常用位置1
 */
void MyObject::SetPos1()
{
    qDebug() << "SetPos1 " << QThread::currentThreadId();
}

/*
 * 常用位置2
 */
void MyObject::SetPos2()
{
    qDebug() << "SetPos2 " << QThread::currentThreadId();
}

/*
 * 零点校准
 */
void MyObject::ZeroPointCalibration()
{
    qDebug() << "ZeroPointCalibration" << QThread::currentThreadId();
}

/*
 * 距离校准
 */
void MyObject::DistanceCalibration()
{
    qDebug() << "DistanceCalibration" << QThread::currentThreadId();
}

/*
 * 线性度校准
 */
void MyObject::LinearCalibration()
{
    qDebug() << "LinearCalibration" << QThread::currentThreadId();
}

/*
 * 保存对焦参数
 */
void MyObject::SaveFocusParams()
{
    qDebug() << "SaveFocusParams" << QThread::currentThreadId();
    QObject * MaxSpeed = RootObject->findChild<QObject*>("LabelMaxSpeed");
    QObject * MinSpeed = RootObject->findChild<QObject*>("LabelMinSpeed");
    QObject * FocusPrecision = RootObject->findChild<QObject*>("LabelFocusPrecision");
    QObject * Timeout = RootObject->findChild<QObject*>("LabelTimeout");

    Params.MinSpeed = MinSpeed->property("text").toString();
    Params.MaxSpeed = MaxSpeed->property("text").toString();
    Params.FocusPrecision = FocusPrecision->property("text").toString();
    Params.Timeout = Timeout->property("text").toString();
    Params.SaveFocusParamToFile("Focus.json");
}

/*
 * 保存通信参数
 */
void MyObject::SaveCommParams()
{
    qDebug() << "SaveCommParams" << QThread::currentThreadId();
    QObject * Port      = RootObject->findChild<QObject*>("LabelPort");
    QObject * BaudRate  = RootObject->findChild<QObject*>("LabelBaudRate");
    QObject * DataBit   = RootObject->findChild<QObject*>("LabelDataBit");
    QObject * ParityBit = RootObject->findChild<QObject*>("LabelParityBit");
    QObject * StopBit   = RootObject->findChild<QObject*>("LabelStopBit");


    Params.Port = Port->property("text").toString();
    Params.BaudRate = BaudRate->property("text").toString();
    Params.DataBit = DataBit->property("text").toString();
    Params.ParityBit = ParityBit->property("text").toString();
    Params.StopBit = StopBit->property("text").toString();
    Params.SaveCommParamToFile("Comm.json");
}

/*
 * 保存传感器参数
 */
void MyObject::SaveSensorParams()
{
    qDebug() << "SaveSensorParams" << QThread::currentThreadId();
    QObject * SampleRate            = RootObject->findChild<QObject*>("LabelSampleRate");
    QObject * FilterLevel           = RootObject->findChild<QObject*>("LabelFilterLevel");
    QObject * StandardCoefficient   = RootObject->findChild<QObject*>("LabelStandardCoefficient");

    Params.SampleRate = SampleRate->property("text").toString();
    Params.FilterLevel = FilterLevel->property("text").toString();
    Params.StandardCoefficient = StandardCoefficient->property("text").toString();
    Params.SaveSensorParamToFile("Sensor.json");
}

/*
  * 保存传感器参数
  */
void MyObject::AutoMode()
{
    qDebug() << "AutoMode" << QThread::currentThreadId();
}
/*
  * 保存传感器参数
  */
void MyObject::HandMode()
{
    qDebug() << "HandMode" << QThread::currentThreadId();
}