#include "TIMER.h"
#include "LCD1602.h"
#include "DS1302.h"
#include "PCF8591.h"

void main()
{
	unsigned char val = 1;
	unsigned char retval;
	unsigned char str[16];
	initLcd();

	while (1)
	{
		//设置DA的数值
		setDACValue(val);
		str[0] = val / 100 % 10 + '0';
		str[1] = val / 10 % 10 + '0';
		str[2] = val     % 10 + '0';
		str[3] = '\0';
		LcdShowString(10,0,"VO:");
		LcdShowString(13,0,str);
		
		retval = getADCValue(DIFF3,0);    //差分输入模式3,0通道数据
		str[0] = retval / 100 % 10 + '0';
		str[1] = retval / 10 % 10 + '0';
		str[2] = retval     % 10 + '0';
		str[3] = '\0';
		LcdShowString(0,0,"CHA0:");
		LcdShowString(6,0,str);
		
		retval = getADCValue(DIFF3,1);  //差分输入模式3,1通道数据
		str[0] = retval / 100 % 10 + '0';
		str[1] = retval / 10 % 10 + '0';
		str[2] = retval     % 10 + '0';
		str[3] = '\0';
		LcdShowString(0,1,"CHA1:");
		LcdShowString(6,1,str);
		
		val ++;
		delay10usValue(50000);
	}
}
