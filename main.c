#include "TIMER.h"
#include "LCD1602.h"
#include "DS1302.h"
#include "PCF8591.h"

void main()
{
	unsigned char val;
	unsigned char str[16];
	initLcd();
	LcdShowString(0,0,"AIN0 AIN1 AIN3");
	while (1)
	{
		val = getADCValue(0);             //读取通道0,并显示出来
		str[0] = val / 100 % 10 + '0';
		str[1] = val / 10 % 10 + '0';
		str[2] = val     % 10 + '0';
		str[3] = '\0';
		LcdShowString(0,1,str);
		
		
		val = getADCValue(1);            //读取通道1,并显示出来
		str[0] = val / 100 % 10 + '0';
		str[1] = val / 10 % 10 + '0';
		str[2] = val     % 10 + '0';
		str[3] = '\0';
		LcdShowString(6,1,str);
		
		
		val = getADCValue(3);            //读取通道3,并显示出来
		str[0] = val / 100 % 10 + '0';
		str[1] = val / 10 % 10 + '0';
		str[2] = val     % 10 + '0';
		str[3] = '\0';
		LcdShowString(12,1,str);
		
	}
}
