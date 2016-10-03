#ifndef __MULTICLOCK_H_
#define __MULTICLOCK_H_
//在开机时,显示应有的信息
extern void initShow();

extern void tempFun();
//定时显示LCD上的信息
extern void timerLcdUpdate();
//定时显示数码管,点阵要显示的信息
extern void timerDataUpdate();
//按键事件处理
extern void keyFun();
//lcd在非编辑状态下的显示内容
extern void showNoEditLcdDate();
//lcd在编辑状态下的显示内容
extern void showDateTimeAndBuzzerTimer();
//在编辑模式下,设置信息
extern void changeNumber(char number);
//刷新显示led.点阵,数码管
extern void timer2Fun();
//led的动态效果
extern void ledRun();
//向左移动光标
extern void leftCursor();
//向右移动光标
extern void rightCursor();
#endif //__MULTICLOCK_H_
