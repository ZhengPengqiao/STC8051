#include "TIMER.h"
#include "LEDSHU.h"
#include "LCD1602.h"
#include "I2C.h"

__xdata unsigned char data[6] = {0,0,0,0,0,0};

unsigned i2cAddressing(unsigned char addr)
{
	char ack;
	i2cStart();
	ack = i2cWrite(addr << 1);
	i2cStop();
	return ack;
}


void main()
{

	unsigned char ack;
	
	__xdata char str[10];
	initLcd();


    while(1)
    {   
		ack = i2cAddressing(0x50);
		str[0] = '5';
		str[1] = '0';
		str[2] = ':';
		str[3] = ack + '0';
		str[4] = '\0';
		LcdShowString(0,1,str);


		ack = i2cAddressing(0x62);
		str[0] = '6';
		str[1] = '2';
		str[2] = ':';
		str[3] = ack + '0';
		str[4] = '\0';
		LcdShowString(0,0,str);
		
		
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		
    }
}
