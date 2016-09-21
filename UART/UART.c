#include "UART.h"



void sendNewLine()
{
	sendString("\r\n",2);
}

void initUart(unsigned int baud)
{
	EA = 1;
	SCON = 0x50;
	TMOD &= 0x0F;
	TMOD |= 0x20; //配置T1为模式2
	TH1 = 256-(11059200/12/32)/baud;
	TL1 = TH1; //初始值等于重载值
	ET1 = 0;   //禁止T1的中断
	ES = 0;    //使能串口中断
	TR1 = 1;   //启动T1
}

void sendChar(char ch)
{
	SBUF = ch;
	while(!TI);
	TI = 0;
}


void sendString(char * str, int len)
{
	int i = 0;
	for(i = 0; i < len; i++)
	{
		sendChar( str[i] );
	}
}


char readChar()
{
	while(!RI);
	RI = 0;
	return SBUF;
}


void readString(char * str, int len)
{
	int i = 0;
	for(i = 0; i < len; i++)
	{
		str[i] = readChar();
	}
}
