#include <QApplication>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWidget>
#include <QQuickView>
#include <QQmlContext>
#include <QJsonObject>
#include <QThread>
#include <QJsonDocument>
#include <QDebug>
#include "MyObject.h"
#include "WorkerThread.h"
#include "Parameters.h"

MyObject obj;
QObject *RootObject;
WorkerThread wt;

void BindSingals();

void TestJson()
{
    qDebug() << "testjson";
    QString jsonString = R"({
        "name": "张三",
        "age": 30
    })";

    // 解析 JSON
    QJsonDocument doc = QJsonDocument::fromJson(jsonString.toUtf8());
    if (doc.isNull()) {
        qDebug() << "JSON 解析失败";
        return;
    }
    if (doc.isObject()) {
        auto obj1 = doc.object();
        qDebug() << obj1.keys();
        if (obj1.keys().contains("age"))
        qDebug() << obj1["name"];
    }

}

int main(int argc, char* argv[])
{
    //TestJson();
    //return 0;
    wt.start();
    obj.moveToThread(&wt);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("MyQML/MyWindow.qml")));

    RootObject = engine.rootObjects().at(0);
    BindSingals();
    QObject * StandardCoefficient   = RootObject->findChild<QObject*>("LabelStandardCoefficient");
    StandardCoefficient->setProperty("text", "aaa");
    qDebug() << "main " << QThread::currentThreadId();



    obj.Params.ReadFromFile("Comm.json", "Sensor.json", "Focus.json");
    obj.Params.UpdateToUI();
    int ret = app.exec();
    obj.Params.SaveToFile("Comm.json", "Sensor.json", "Focus.json");
    return ret;
}