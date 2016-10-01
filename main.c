#include "TIMER.h"
#include "LEDSHU.h"
#include "LCD1602.h"
#include "I2C.h"
#include "E2PROM.h"
__xdata unsigned char data[6] = {0,0,0,0,0,0};


void main()
{

	__xdata unsigned char da = 0;
	__xdata unsigned char addr = 0;
	__xdata char str[13];
	__xdata unsigned char err = 0;  //记录错误的个数
	initLcd();


    while(1)
    {   
		e2promWriteByte(addr,da);  //向addr地址写入da,da应该和addr相等
		
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		
		da = e2promReadByte(addr);  //读取addr地址的数据,保存在da中
		if(addr != da )             //如果不相同,也就是不是我们想要保存的数据
		{
			err++;
		}
		
		str[0] = da / 100 + '0';          //显示读取到的数据
		str[1] = da / 10 % 10 + '0';
		str[2] = da % 10 + '0';
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
		
		addr++;  //增加到255就会溢出为0
		da++;    //增加到255就会溢出为0
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
	
		
    }
}
