#include "LED.h"
#include "TIMER.h"

void main()
{
	unsigned int i;
    ADDR3 = 1;   //使能U3
    ADDR2 = 1;   //
    ADDR1 = 1;   //使能引脚LEDS6，使其输出高电平,也就是连接LED灯的引脚。
    ADDR0 = 0;   //
    ENLED = 0;   //使能U3/U4
	
	while(1)
	{
		for(i = 0; i < 10; i++)
		{
			DelayUs(50000);  //延时50ms,因为DelayUs最大可延时70微妙
		}
		LEDDATA = ~LEDDATA;
	}
}
