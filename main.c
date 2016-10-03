#include "LED.h"
#include "TIMER.h"


/*******************************************************************************
 *  函数名称: Led1Fun
 *  函数介绍: 定时任务到期时将会执行的函数
 *  参数介绍: 无
 *  返回值  : 无
 ******************************************************************************/
void Led1Fun()
{
	setLedToggle(1);
}

void Led2Fun()
{
	setLedToggle(2);
}

void Led3Fun()
{
	setLedToggle(3);
}

void Led4Fun()
{
	setLedToggle(4);
}


void timer2Fun()
{
	static unsigned char i = 0;
	switch(i)
	{
		case 0:updateLed();i = 0; break;   //定时刷新小灯状态,刷新小灯状态
	}   
}	

void main()
{
	
	unsigned char updateStatus = 0;
	addTIMER0Task(1000,Led1Fun,1);  //添加一个定时任务
	addTIMER0Task(2000,Led2Fun,1);  //添加一个定时任务
	addTIMER0Task(4000,Led3Fun,1);  //添加一个定时任务
	addTIMER0Task(8000,Led4Fun,1);  //添加一个定时任务
	initTimer2(600);
	setTimer2Fun(timer2Fun);
	while(1)
	{
		updateTIMER0();   //刷新Timer0状态,处理发生的事件
	}
}
