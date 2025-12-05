#include  "Parameters.h"

#include <fstream>
#include <sstream>
#include <iostream>
#include <string>

#include <QObject>
#include <QVariant>
#include <QJsonDocument>
#include <QJsonObject>

extern QObject *RootObject;
std::string readFileToString(const std::string filePath) {
    std::ifstream file(filePath);
    if (!file.is_open()) {
        std::cerr << "无法打开文件: " << filePath << std::endl;
        return "";
    }

    std::stringstream buffer;
    buffer << file.rdbuf();
    file.close();

    return buffer.str();
}

void writeToFile(const std::string filePath, const std::string content) {
    std::ofstream file(filePath);  // 默认模式：覆盖写入
    if (!file.is_open()) {
        std::cerr << "无法打开文件: " << filePath << std::endl;
        return;
    }

    file << content;
    file.close();
}

Parameters::Parameters()
{
    SampleRate          = "1";
    FilterLevel         = "1";
    StandardCoefficient = "1";

    Port                = "1";
    BaudRate            = "1";
    DataBit             = "1";
    ParityBit           = "1";
    StopBit             = "1";

    MaxSpeed            = "1";
    MinSpeed            = "1";
    FocusPrecision      = "1";
    Timeout             = "1";
}

Parameters::~Parameters() {

}

void Parameters::SaveToFile(QString file1,QString file2, QString file3) {
    QString Json1 = CommParamToJson();
    QString Json2 = SensorParamToJson();
    QString Json3 = FocusParamToJson();
    writeToFile(file1.toStdString(), Json1.toStdString());
    writeToFile(file2.toStdString(), Json2.toStdString());
    writeToFile(file3.toStdString(), Json3.toStdString());
}

void Parameters::ReadFromFile(QString file1, QString file2, QString file3) {
    QString Json1 = QString::fromStdString(readFileToString(file1.toStdString()));
    QString Json2 = QString::fromStdString(readFileToString(file2.toStdString()));
    QString Json3 = QString::fromStdString(readFileToString(file3.toStdString()));
    ParseCommParam(Json1);
    ParseSensorParam(Json2);
    ParseFocusParam(Json3);
}

void Parameters::SaveCommParamToFile(QString file1) {
    QString Json1 = CommParamToJson();
    writeToFile(file1.toStdString(), Json1.toStdString());
}

void Parameters::ReadCommParamFromFile(QString file1) {
    QString Json1 = QString::fromStdString(readFileToString(file1.toStdString()));
    ParseCommParam(Json1);
}

void Parameters::SaveFocusParamToFile(QString file1) {
    QString Json1 = FocusParamToJson();
    writeToFile(file1.toStdString(), Json1.toStdString());
}

void Parameters::ReadFocusParamFromFile(QString file1) {
    QString Json1 = QString::fromStdString(readFileToString(file1.toStdString()));
    ParseFocusParam(Json1);
}

void Parameters::SaveSensorParamToFile(QString file1) {
    QString Json1 = SensorParamToJson();
    writeToFile(file1.toStdString(), Json1.toStdString());
}

void Parameters::ReadSensorParamFromFile(QString file1) {
    QString Json1 = QString::fromStdString(readFileToString(file1.toStdString()));
    ParseSensorParam(Json1);
}

void Parameters::ParseCommParam(QString param)
{
    // 解析 JSON
    QJsonDocument doc = QJsonDocument::fromJson(param.toUtf8());
    if (doc.isNull()) {
        qDebug() << "JSON 解析失败";
        return;
    }

    QString Key;
    if (doc.isObject())
    {
        auto obj1 = doc.object();
        qDebug() << obj1.keys();

        Key = "Port";
        if (obj1.keys().contains(Key))
            Port = obj1[Key].toString();

        Key = "BaudRate";
        if (obj1.keys().contains(Key))
            BaudRate = obj1[Key].toString();

        Key = "DataBit";
        if (obj1.keys().contains(Key))
            DataBit = obj1[Key].toString();

        Key = "ParityBit";
        if (obj1.keys().contains(Key))
            ParityBit = obj1[Key].toString();

        Key = "StopBit";
        if (obj1.keys().contains(Key))
            StopBit = obj1[Key].toString();
    }
}

void Parameters::ParseSensorParam(QString param)
{
    QJsonDocument doc = QJsonDocument::fromJson(param.toUtf8());
    if (doc.isNull()) {
        qDebug() << "JSON 解析失败";
        return;
    }

    QString Key;
    if (doc.isObject())
    {
        auto obj1 = doc.object();
        qDebug() << obj1.keys();

        Key = "SampleRate";
        if (obj1.keys().contains(Key))
            SampleRate = obj1[Key].toString();

        Key = "FilterLevel";
        if (obj1.keys().contains(Key))
            FilterLevel = obj1[Key].toString();

        Key = "StandardCoefficient";
        if (obj1.keys().contains(Key))
            StandardCoefficient = obj1[Key].toString();
    }
}

void Parameters::ParseFocusParam(QString param)
{
    QJsonDocument doc = QJsonDocument::fromJson(param.toUtf8());
    if (doc.isNull()) {
        qDebug() << "JSON 解析失败";
        return;
    }

    QString Key;
    if (doc.isObject())
    {
        auto obj1 = doc.object();
        qDebug() << obj1.keys();

        Key = "MaxSpeed";
        if (obj1.keys().contains(Key))
            MaxSpeed = obj1[Key].toString();

        Key = "MinSpeed";
        if (obj1.keys().contains(Key))
            MinSpeed = obj1[Key].toString();

        Key = "FocusPrecision";
        if (obj1.keys().contains(Key))
            FocusPrecision = obj1[Key].toString();

        Key = "Timeout";
        if (obj1.keys().contains(Key))
            Timeout = obj1[Key].toString();
    }
}

QString Parameters::CommParamToJson()
{
    QJsonObject root;
    root.insert("Port",     Port);
    root.insert("BaudRate", BaudRate);
    root.insert("DataBit",  DataBit);
    root.insert("ParityBit",ParityBit);
    root.insert("StopBit",  StopBit);
    QJsonDocument doc(root);
    return doc.toJson(QJsonDocument::Indented);
}

QString Parameters::SensorParamToJson()
{
    QJsonObject root;
    root.insert("SampleRate",     SampleRate);
    root.insert("FilterLevel", FilterLevel);
    root.insert("StandardCoefficient",  StandardCoefficient);
    QJsonDocument doc(root);
    return doc.toJson(QJsonDocument::Indented);
}

QString Parameters::FocusParamToJson()
{
    QJsonObject root;
    root.insert("MaxSpeed",         MaxSpeed);
    root.insert("MinSpeed",         MinSpeed);
    root.insert("FocusPrecision",   FocusPrecision);
    root.insert("Timeout",          Timeout);
    QJsonDocument doc(root);
    return doc.toJson(QJsonDocument::Indented);
}

void Parameters::UpdateToUI()
{
    QObject * Obj = nullptr;

    /**/
    Obj = RootObject->findChild<QObject*>("LabelStandardCoefficient");
    Obj->setProperty("text", StandardCoefficient);

    Obj = RootObject->findChild<QObject*>("LabelSampleRate");
    Obj->setProperty("text", SampleRate);

    Obj = RootObject->findChild<QObject*>("LabelFilterLevel");
    Obj->setProperty("text", FilterLevel);

    /**/
    Obj = RootObject->findChild<QObject*>("LabelPort");
    Obj->setProperty("text", Port);

    Obj = RootObject->findChild<QObject*>("LabelBaudRate");
    Obj->setProperty("text", BaudRate);

    Obj = RootObject->findChild<QObject*>("LabelDataBit");
    Obj->setProperty("text", DataBit);

    Obj = RootObject->findChild<QObject*>("LabelParityBit");
    Obj->setProperty("text", ParityBit);

    Obj = RootObject->findChild<QObject*>("LabelStopBit");
    Obj->setProperty("text", StopBit);

    /**/
    Obj = RootObject->findChild<QObject*>("LabelMaxSpeed");
    Obj->setProperty("text", MaxSpeed);

    Obj = RootObject->findChild<QObject*>("LabelMinSpeed");
    Obj->setProperty("text", MinSpeed);

    Obj = RootObject->findChild<QObject*>("LabelFocusPrecision");
    Obj->setProperty("text", FocusPrecision);

    Obj = RootObject->findChild<QObject*>("LabelTimeout");
    Obj->setProperty("text", Timeout);
}