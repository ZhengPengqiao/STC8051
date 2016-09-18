#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"

/*******************************************************************************
 *  函数名称: LedShuFun
 *  函数介绍: 定时任务到期时将会执行的函数
 *  参数介绍: 无
 *  返回值  : 无
 ******************************************************************************/
unsigned char ledarray[] = {0,0,0,0,0,0};
unsigned int a = 0;

void timerFun()
{
	a++;
	ledarray[0] = a    % 10;
	ledarray[1] = a /10 % 10;
	ledarray[2] = a /100 % 10;
	ledarray[3] = a /1000 % 10;
	ledarray[4] = a /10000 % 10;
}
void main()
{
	addTIMER0Task(1000,timerFun,1);
	while(1)
	{
	    updateLedShu(ledarray);
	    updateTIMER0();
	}
}
