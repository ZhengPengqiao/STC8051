#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "LCD1602.h"
#include "KEY.h"
#include "DS1302.h"
#include "DS18B20.h"
#include "multiClock.h"

void main()
{
	int i = 0;
	initDS1302(); //初始化实时时钟
	
	//添加定时任务
	addTIMER0Task(400,ledRun,1);
	addTIMER0Task(200,keyFun,2);
	addTIMER0Task(1000,timerDataUpdate,3);
	addTIMER0Task(1000,tempFun,4);
	addTIMER0Task(5000,timerLcdUpdate,5);
	//设置定时器2
	initTimer2(500);
	setTimer2Fun(timer2Fun);
	initLcd();
	
	//初始化时,刷新所有信息
	initShow();
	while(1)
	{
		updateTIMER0();
	}
}
