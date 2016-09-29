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

/*******************************************************************************
 * 函数名称 : HC05Init
 * 函数介绍 : 蓝牙模块初始化,判断蓝牙模块是否存在,
 * 参数介绍 : 无
 * 返回值   : 无
 ******************************************************************************/
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

/*******************************************************************************
 * 函数名称 : HC05ExecCmd
 * 函数介绍 : 执行蓝牙模块的AT指令,不过要按下按键
 * 参数介绍 : cmdStr : 命令字符串
 * 			cmdLen : 命令字符串大小
 *  		 retStr : 用来存储返回的字符串数据的缓冲区
 * 			retStrLen : 缓冲区的大小
 * 返回值   : 真正返回的字符串长度
 ******************************************************************************/
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

/*******************************************************************************
 * 函数名称 : HC05GetRole
 * 函数介绍 : 得到蓝牙模块的状态
 * 参数介绍 : retStr : 用来存储返回的字符串数据的缓冲区
 * 			retStrLen : 缓冲区的大小
 * 返回值   : 真正返回的字符串长度
 ******************************************************************************/
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

/*******************************************************************************
 * 函数名称 : HC05GetString
 * 函数介绍 : 从蓝牙模块读取数据
 * 参数介绍 : str : 用来存储数据的缓冲区
 * 			strlen : 缓冲区的大小
* 返回值   : 真正返回的字符串长度
 ******************************************************************************/
unsigned char HC05GetString(char str [],int strLen)
{
	return readString(str,strLen);
}

