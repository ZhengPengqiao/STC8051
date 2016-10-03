#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"

__xdata unsigned char image[] = {
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0x7D,0x01,0x01,0x7D,0xFF,0xFF,0xE3,0xC1,
0x81,0x03,0x03,0x81,0xC1,0xE3,0xFF,0xFF,
0x81,0x01,0x3F,0x3F,0x3F,0x01,0x81,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
};
signed char data[] = {0,0,0,0,0,0};
unsigned char index = 0;
void zhenFun()
{
		index ++;
		if(index > 32)
		{
				index = 0;
		}
}



void ledFun()
{
	setAllLedToggle();
}

void timer2Fun()
{
		static unsigned char i = 0;
		switch(i)
		{
				case 0:updateLedZhen(image+index); i = 1;break;
				case 1:updateLedShu(data);i = 2;break;
				case 2:updateLed();i = 0; break;
		}
	   
}
void main()
{
	int i = 0;
	addTIMER0Task(200,zhenFun,1);
	addTIMER0Task(1000,ledFun,2);
	   
	initTimer2(500);
	setTimer2Fun(timer2Fun);
	while(1)
	{
			updateTIMER0();
	}
}
