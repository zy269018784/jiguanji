#include <QApplication>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWidget>
#include <QQuickView>
#include <QQmlContext>
#include <QDebug>
#include "MyObject.h"
#include "WorkerThread.h"
#include <QThread>

MyObject obj;
QObject *RootObject;
WorkerThread wt;
void BindSingals();

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("MyQML/MyWindow.qml")));
    wt.start();
    obj.moveToThread(&wt);
    RootObject = engine.rootObjects().at(0);
    BindSingals();
    //auto * autoFocus = RootObject->findChild<QObject*>("autoFocus");
    //QObject::connect(autoFocus, SIGNAL(clicked()), &obj, SLOT(onButtonClicked()), Qt::QueuedConnection);

    qDebug() << "main " << QThread::currentThreadId();

    int ret = app.exec();
    return ret;
}