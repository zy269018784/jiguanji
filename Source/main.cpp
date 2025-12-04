#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWidget>
#include  <QDebug>
int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);

#if 1
    qDebug() << "hello1";
    QQuickWidget *view = new QQuickWidget;    return 0;
    if (!view->engine()) {
        qDebug() << "QML引擎初始化失败";
        return -1;
    }
    qDebug() << "hello2";
    view->resize(800, 600);
    view->setSource(QUrl::fromLocalFile("MyQML/MyWindow.qml"));
    view->show();
    qDebug() << "hello3";
#else
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("MyQML/MyWindow.qml")));
#endif

    int ret = app.exec();
    return ret;
}