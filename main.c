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
	unsigned char nu = 0;
	__xdata cmdLen = 10;
	__xdata unsigned char cmdStr[] = "AT+ROLE?\r\n";
	char retLen;
	__xdata unsigned char retStr[16];

	initUart(9600);
	initLcd();
	HC05Init();
	
	while(1)
	{
		i++;
		if(i > 50000)
		{
			
			retLen = HC05GetRole(cmdStr,cmdLen,retStr,15);
			retStr[retLen-1] = '0'+nu;
			retStr[retLen] = '\0';
			
			LcdShowString(0,1,retStr);
			i = 0;
		}
	
	}
}
