#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "KEY.h"
#include "BUZZER.h"
#include "UART.h"
#include "LCD1602.h"
#include "HC05.h"


void main()
{
	unsigned char str[17];
	unsigned len =  0;
	initUart(9600);
	initLcd();
	HC05Init();
	while(1)
	{
		len = readString(str,16);
		if(len != 0)
		{
			str[len] = '\0';
		}
		LcdAreaClear(0,1,16);
		LcdShowString(0,1,str);
		delay10usValue(50000);
	}
}
