#pragma once
#include <QObject>
#include <QThread>
#include <QDebug>
#include "Parameters.h"
class MyObject : public  QObject
{
    Q_OBJECT
public:
    MyObject(QObject *Parent = nullptr);
public slots:
    void onButtonClicked();
    /*
     *  自动对焦
     */
    void AutoFocus();
    /*
     * 停止
     */
    void Stop();
    /*
     * 紧急停止
     */
    void EmergencyStop();
    /*
     * 上
     */
    void Up();
    /*
     * 下
     */
    void Down();
    /*
     *  一键归零
     */
    void SetZero();
    /*
     * 常用位置1
     */
    void SetPos1();
    /*
     * 常用位置2
     */
    void SetPos2();
    /*
     * 零点校准
     */
    void ZeroPointCalibration();
    /*
     * 距离校准
     */
    void DistanceCalibration();
    /*
     * 线性度校准
     */
    void LinearCalibration();
    /*
     * 保存对焦参数
     */
    void SaveFocusParams();
    /*
     * 保存通信参数
     */
    void SaveCommParams();
    /*
     * 保存传感器参数
     */
    void SaveSensorParams();
    /*
      * 保存传感器参数
      */
    void AutoMode();
    /*
      * 保存传感器参数
      */
    void HandMode();
public:
    Parameters Params;
};

