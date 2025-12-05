#pragma once
#include <QThread>
#include <QDebug>
class WorkerThread : public QThread {
    Q_OBJECT
public:
    ~WorkerThread() { terminate();}
    void run() override {
        qDebug() << "Worker thread running in thread" << QThread::currentThreadId();
        exec(); // 进入事件循环
    }
public slots:
    void onButtonClicked() {
        qDebug() << "onButtonClicked " << QThread::currentThreadId();
    }
    signals:
        void workStarted();
};