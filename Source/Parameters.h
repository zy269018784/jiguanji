#pragma once
#include <QString>
class Parameters
{
public:
    Parameters();
    ~Parameters();
    void SaveToFile(QString file1,QString file2, QString file3);
    void ReadFromFile(QString file1,QString file2, QString file3);

    void SaveCommParamToFile(QString file1);
    void ReadCommParamFromFile(QString file1);

    void SaveFocusParamToFile(QString file1);
    void ReadFocusParamFromFile(QString file1);

    void SaveSensorParamToFile(QString file1);
    void ReadSensorParamFromFile(QString file1);

    void UpdateToUI();
    void ParseCommParam(QString param);
    void ParseSensorParam(QString param);
    void ParseFocusParam(QString param);
    QString CommParamToJson();
    QString SensorParamToJson();
    QString FocusParamToJson();
public:
    QString SampleRate;
    QString FilterLevel;
    QString StandardCoefficient;
public:
    QString Port;
    QString BaudRate;
    QString DataBit;
    QString ParityBit;
    QString StopBit;
public:
    QString MaxSpeed;
    QString MinSpeed;
    QString FocusPrecision;
    QString Timeout;
};