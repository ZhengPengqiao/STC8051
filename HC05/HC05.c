#include "HC05.h"
#include "UART.h"
#include "TIMER.h"
#include "LCD1602.h"
unsigned char HC05Init(void)
{
	unsigned char str[10];
	unsigned int i = 0;

	initLcd();
	
	while(1)
	{
		sendString("AT\r\n",4);
		readString(str,3);
		if( str[0] == 'O' && str[1] == 'K')
		{
			LcdAreaClear(0,0,16);
			LcdShowString(0,0,"HC05-OK");
			return 0;
		}
		LcdShowString(0,0,"HC05-Error");
	}
}

void HC05CfgCmd(unsigned char *str)
{
	str = str+1;
}

unsigned char HC05GetRole(void)
{
	return 0;
}

unsigned char HC05SetCmd(unsigned char * atstr)
{
	atstr = atstr;
	return 0;
}
