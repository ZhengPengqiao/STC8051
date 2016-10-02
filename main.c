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
		
		//差分输入模式3,自动转换,因为是读取的上次转换的结果,所以读取的是1通道
		retval = getADCAutoValue(DIFF3,1); 
		str[0] = retval / 100 % 10 + '0';
		str[1] = retval / 10 % 10 + '0';
		str[2] = retval     % 10 + '0';
		str[3] = '\0';
		LcdShowString(0,0,"CHA0:");
		LcdShowString(6,0,str);
		
		//差分输入模式3,自动转换,因为是读取的上次转换的结果,所以读取的是0通道
		retval = getADCAutoValue(DIFF3,0);  
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
