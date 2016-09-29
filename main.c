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
	__xdata unsigned int i = 0;
	char retLen;
	__xdata unsigned char str[30];

	initUart(9600);
	initLcd();
	
	//知道初始化成功为止
	while(!HC05Init())
	{
		LcdShowString(0,0,"HC05-ERR");
	}

	LcdAreaClear(0,0,15);
	LcdShowString(0,0,"HC05-OK");
	
	while(1)
	{
		i++;
		if(i > 5000)
		{
			retLen = HC05GetString(str,30);
			str[retLen] = '\0';
			LcdShowString(0,1,str);
			
			i = 0;
		}
	}
}
