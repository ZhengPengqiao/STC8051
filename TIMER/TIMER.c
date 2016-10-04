/*******************************************************************************
 * 文件名称：TIMER.c
 * 作者    ：  郑朋桥
 * 文件介绍：用于为上层提供统一的定时函数，可以在配置文件中配置可以同时定义的任务数量，用于MS定时
 * 的函数是非阻塞的，用于us的函数是阻塞的。
 * 
 ******************************************************************************/
/*******************************************************************************
 *INCLUDE头文件 
 ******************************************************************************/
#include "TIMER.h"
#include "config.h"
unsigned long timerClock = 0;
__xdata Timer0TaskStruct timer0TaskStruct[timer0TaskCount];
unsigned int timerCount = 20;  //定义初始定时周期
int taskCount = 0;
/*******************************************************************************
 *  函数名字 ：  Timer0Start
 *  函数介绍 ：  启动timer0
 *  参数介绍 ：  无
 *  返回    ：  无   
 ******************************************************************************/
void Timer0Start()
{
	TR0 = 1;      //开启定时器
}
/*******************************************************************************
 *  函数名字 ：  Timer0Stop
 *  函数介绍 ：  停止timer0
 *  参数介绍 ：  无
 *  返回    ：  无   
 ******************************************************************************/
void Timer0Stop()
{
	TR0 = 0;      //停止定时器
}
/*******************************************************************************
 *  函数名字 ：  timer0ValueMs
 *  函数介绍 ：  初始化timer0定时器，定时value个毫秒数,0~70ms之间,基础定时器
 *  参数介绍 ：  value :将要定时的毫秒数
 *  返回    ：  无
 ******************************************************************************/
void timer0SetValue(unsigned int value)
{
    value = value * 928;
    value = 0xFFFF-value;
	TH0 = (value>>8) & 0xFF;   //设置定时时间
	TL0 =  value     & 0xFF;
}
/*******************************************************************************
 *  函数名字 ：  time0Init
 *  函数介绍 ：  初始化函数
 *  参数介绍 ：  无
 *  返回    ：  无   
 ******************************************************************************/
void time0Init()
{
	int i;
	for(i = 0; i < timer0TaskCount; i++)
	{
		timer0TaskStruct[i].TimerFun0 = NULL;
		taskCount = 0;
	}
	
	EA = 1;  //开中断
	/*设置定时器*/
	TMOD = 0x01;  //使能模式1
	timer0SetValue(timerCount);
    ET0 = 1;  //开定时器0的中断
    Timer0Start();
    
}
/*******************************************************************************
 *  函数名字 ：  getTaskCount
 *  函数介绍 ：  得到当前时间的任务数
 *  参数介绍 ：  无
 *  返回    ：  无   
 ******************************************************************************/
int getTaskCount()
{
	return taskCount;
}
/*******************************************************************************
 *  函数名字 ：  timer0Add
 *  函数介绍 ：  添加定时服务
 *  参数介绍 ：  inTimerMs ： 要定时的时间
 *			： inTimerFun0 ： 定时器要调用的函数
 *			： intag    ： 当前任务的标志，删除时候使用
 *  返回    ：  无   
 ******************************************************************************/
void timer0Add(unsigned int inTimerMs,void (*inTimerFun0)(),int intag)
{
	int i;
	if(taskCount == 0) //在添加第一次任务时，会初始化。
	{
		time0Init();
	}
	for(i = 0; i < timer0TaskCount; i++)
	{
		if(timer0TaskStruct[i].TimerFun0 == NULL)
		{
			timer0TaskStruct[i].TimerFun0 = inTimerFun0;
			timer0TaskStruct[i].tag = intag;
			timer0TaskStruct[i].time = timerClock + inTimerMs;
			timer0TaskStruct[i].timeBack = inTimerMs;
			taskCount++;
			break;
		}
	}
	
}
/*******************************************************************************
 *  函数名字 ：  timer0Del
 *  函数介绍 ：  删除定时服务
 *  参数介绍 ：  intag    ： 要删除的任务的标志
 *  返回    ：  无   
 ******************************************************************************/
void timer0Del(int intag)
{
	int i;
	for(i = 0; i < timer0TaskCount; i++)
	{
		if(timer0TaskStruct[i].tag == intag)
		{
			timer0TaskStruct[i].TimerFun0 = NULL;
			taskCount--;
			if(taskCount <= 0)
			{
				Timer0Stop();
			}
			break;
		}
	}
}
/*******************************************************************************
 *  函数名字 ：  InterruptTimer0
 *  函数介绍 ：  定时器0的中断服务函数
 *  参数介绍 ：  无
 *  返回    ：  无   
 ******************************************************************************/
void InterruptTimer0() __interrupt 1
{
	timerClock += timerCount;
	timer0SetValue(timerCount);
}
/*******************************************************************************
 *  函数名字 ：  TIMER0Update
 *  函数介绍 ：  查看是否有时间发生
 *  参数介绍 ：  无
 *  返回    ：  无   
 ******************************************************************************/
void TIMER0Update()
{
	int i;
	for(i = 0; i < timer0TaskCount; i++)
	{
		if(timer0TaskStruct[i].TimerFun0 != NULL)
		{
			if(timer0TaskStruct[i].time <= timerClock)
			{
				timer0TaskStruct[i].TimerFun0();    //调用函数
				timer0TaskStruct[i].time = \
					timer0TaskStruct[i].timeBack + timerClock;//定义下一次到达时间
			}
		}
	}
}


/*****************************************************************************
*  函数名称  ： Delay_us
*  函数介绍  ：  使用Time1定时器模模式，进行精确定位
*            ：
*    参数    ： value : 延时 us,最大延时65ms
*   返回值   ： 无
******************************************************************************/
void DelayUs(unsigned int value)
{ 
	TMOD &= 0x0F;    //清楚T1控制位
	TMOD |= 0x10;    //配置T1为模式1
	value = 65536 - value * 0.928;
	TH1 = value>>8;
	TL1 = value;
	ET1 = 0;         //禁止T1中断
	TF1 = 0;
	TR1 = 1;         //启动T1定时器
	
	while( TF1 == 0);  //在时间到达时,清楚溢出标志位
	TF1 = 0;
	TR1 = 0;
}
