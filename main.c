#include "TIMER.h"
#include "LEDSHU.h"
#include "LCD1602.h"
#include "I2C.h"
#include "E2PROM.h"
__xdata unsigned char data[6] = {0,0,0,0,0,0};


void main()
{

	unsigned char da = 0;
	unsigned char addr = 0;
	unsigned char i;
	char str[13];
	unsigned char err = 0;  //记录错误的个数
	unsigned char buff[20];
	unsigned char ret[20];
	initLcd();

	for(i = 0; i < 20; i++)
	{
		buff[i] = i;
	}
	
	for(i = 0; i < 20; i++)
	{
		e2promWriteByte(i,i);
	}
	
	e2promRead(0,ret,20);

    while(1)
    {   

		
		if(ret[addr] != addr)
		{
			err++;
		}
		
		str[0] = ret[addr] / 100 + '0';          //显示读取到的数据
		str[1] = ret[addr] / 10 % 10 + '0';
		str[2] = ret[addr] % 10 + '0';
		str[3] = ' ';
		str[4] = ' ';
		str[5] = err / 100 + '0';         //显示错误个数
		str[6] = err / 10 % 10 + '0';
		str[7] = err % 10 + '0';
		str[8] = '/';
		str[9] = addr / 100 + '0';         //显示当前位置
		str[10] = addr / 10 % 10 + '0';
		str[11] = addr % 10 + '0';
		str[12] = '\0';

		
		LcdShowString(0,0,str);
		addr++;

		if(addr >= 20)
		{
			addr = 0;
			err = 0;
		}
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
    }
}
