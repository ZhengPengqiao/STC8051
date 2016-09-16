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


void main()
{
	
	timer0Add(1000,Led1Fun,1);  //添加一个定时任务
	timer0Add(2000,Led2Fun,1);  //添加一个定时任务
	timer0Add(4000,Led3Fun,1);  //添加一个定时任务
	timer0Add(8000,Led4Fun,1);  //添加一个定时任务
		
	while(1)
	{
		ledUpdate();
		TIMER0Update();
	}
}
