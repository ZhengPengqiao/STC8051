#ifndef __MOTOR_H_
#define __MOTOR_H_

#include "kingst.h"
#include "config.h"

//因为只用了P1_0~P1_3引脚,左移我们只能够改变对应的引脚
#define MOTORDATA(x)  (P1 = (P1 & 0xF0 | x))

/*******************************************************************************
 * 函数名称 : motorStep
 * 函数介绍 :	 运行步进电机
 * 参数介绍 : 无
 * 返回值   : 无
 ******************************************************************************/
extern void motorStep();

/*******************************************************************************
 * 函数名称 : setMotorRunDir
 * 函数介绍 :	 设置步进电机的方向,当dir是1时,为顺时针,不为1时,为逆时针
 * 参数介绍 :  dir : 方式
 * 返回值   : 无
 ******************************************************************************/
extern void setMotorRunDir(unsigned char dir);


/*******************************************************************************
 * 函数名称 : motorRunAngle
 * 函数介绍 :	 按设定方向转动制定角度,步进电机运行4096次,外界转动一圈
 * 参数介绍 :  angle : 将要转动的角度
 * 返回值   : 返回相应的角度对应要转动的次数
 ******************************************************************************/
extern unsigned int motorRunAngle(float angle);
#endif //__MOTOR_H_
