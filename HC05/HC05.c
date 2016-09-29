#include "HC05.h"
#include "UART.h"
#include "TIMER.h"

void replaceEnter(char str[], int len)
{
	int i;
	for(i = 0; i < len; i++)
	{
		if(str[i] == '\r' || str[i] == '\n')
		{
			str[i] = ' ';
		}
	}
}

unsigned char HC05Init(void)
{
	unsigned char str[10];
	unsigned int i = 0;

	sendString("AT\r\n",4);
	delay10usValue(1000);
	readString(str,10);
	if( str[0] == 'O' && str[1] == 'K')
	{
		return 1;
	}
	return 0;
}


unsigned char HC05ExecCmd(char cmdStr[],int cmdLen,char retStr [],int retStrLen)
{
	int len = 0;
	char cishu = 5;
	sendString(cmdStr,cmdLen);
	do
	{
		delay10usValue(500);
		len += readString(retStr+len,retStrLen-len);
	}while( (cishu--) && (retStrLen > len) );
	replaceEnter(retStr,retStrLen);
	return len;
}


unsigned char HC05GetRole(char retStr [],int retStrLen)
{
	int len = 0;
	char cishu = 5;
	sendString("AT+ROLE?\r\n",10);
	do
	{
		delay10usValue(500);
		len += readString(retStr+len,retStrLen-len);
	}while( (cishu--) && (retStrLen > len) );
	replaceEnter(retStr,retStrLen);
	return len;
	
}

unsigned char HC05GetString(char str [],int strLen)
{
	return readString(str,strLen);
}

