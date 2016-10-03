#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "LCD1602.h"
#include "KEY.h"

__xdata unsigned char image[] = {
0xFF,0xFF,0x7D,0x01,0x01,0x7D,0xFF,0xFF,
0xE3,0xC1,0x81,0x03,0x03,0x81,0xC1,0xE3,
0x81,0x01,0x3F,0x3F,0x3F,0x3F,0x01,0x81
};
__xdata unsigned char timeStr[16];
signed char data[] = {0,0,0,0,0,0};
unsigned char index = 0;

//定义红黄绿的运行延时倒计数
char green = 10;
char yellow = 10;
char red = 10;
//定义红黄绿的延时时间
char greenTime = 10;
char yellowTime = 10;
char redTime = 10;
char zhenStatus = 0;
char zhenStatusTime = 0;


//交通灯的变化
void ledZhen()
{
	switch(zhenStatus)
	{
		case 0:
			zhenStatusTime = --red;
			index = 0;
			if(red == 0)
			{
				red = redTime;
				zhenStatus = 1;
			} 
			break;
		case 1: 
			zhenStatusTime = --green;
			index = 8; //显示
			if(green == 0)
			{
				green = greenTime;
				zhenStatus = 2;
			} 
			break;
		case 2: 
			zhenStatusTime = --yellow;
			index = 16;
			if(yellow == 0)
			{
				yellow = yellowTime;
				zhenStatus = 0;
			} 
			break;
	}
	
	data[0] = zhenStatusTime % 10;
	data[1] = zhenStatusTime / 10;
}

void timer2Fun()
{
	static unsigned char keyTimer = 0;
	static unsigned char i = 0;
	switch(i)
	{
			case 0:updateLedZhen(image+index); i = 1;break;
			case 1:updateLedShu(data);i = 2;break;
			case 2:updateLed();i = 0; break;
	}
	   
	keyTimer++;
	if(keyTimer > 10)
	{
		keyScan();
		keyTimer = 0;
	}
}

void keyFun()
{
	unsigned int keyStatus = 0;
	keyStatus = getKeyStatus();
	
	if(keyStatus & (1 << 0)) //按键1增加红灯时间
	{
		clearKeyStatus(0);
		if(redTime < 20)
		{
			redTime++;
			red = redTime;
			timeStr[1] = redTime / 10 + '0';
			timeStr[2] = redTime % 10 + '0';
			LcdShowString(0,0,"red green yellow");
			LcdShowString(0,1,timeStr);
		}
	}
	else if(keyStatus & (1 << 1)) //按键2增加绿灯时间
	{
		clearKeyStatus(1);
		if(greenTime < 20)
		{
			greenTime++;
			green = greenTime;
			timeStr[6] = greenTime / 10 + '0';
			timeStr[7] = greenTime % 10 + '0';
			LcdShowString(0,0,"red green yellow");
			LcdShowString(0,1,timeStr);
		}
	}
	else if(keyStatus & (1 << 2))  //按键3增加黄灯时间
	{
		clearKeyStatus(2);
		if(yellowTime < 20)
		{
			yellowTime++;
			yellow = yellowTime;
			timeStr[12] = yellowTime / 10 + '0';
			timeStr[13] = yellowTime % 10 + '0';
			LcdShowString(0,0,"red green yellow");
			LcdShowString(0,1,timeStr);
		}
	}
	else if(keyStatus & (1 << 4)) //按键5减少红灯时间
	{
		clearKeyStatus(4);
		if(redTime > 5 )
		{
			redTime--;
			red = redTime;
			timeStr[1] = redTime / 10 + '0';
			timeStr[2] = redTime % 10 + '0';
			LcdShowString(0,0,"red green yellow");
			LcdShowString(0,1,timeStr);
		}
	}
	else if(keyStatus & (1 << 5)) //按键6减少绿灯时间
	{
		clearKeyStatus(5);
		if(greenTime > 5)
		{
			greenTime--;
			green = greenTime;
			timeStr[6] = greenTime / 10 + '0';
			timeStr[7] = greenTime % 10 + '0';
			LcdShowString(0,0,"red green yellow");
			LcdShowString(0,1,timeStr);
		}
	}
	else if(keyStatus & (1 << 6))  //按键7减少黄灯时间
	{
		clearKeyStatus(6);
		if(yellowTime > 5)
		{
			yellowTime--;
			yellow = yellowTime;
			timeStr[12] = yellowTime / 10 + '0';
			timeStr[13] = yellowTime % 10 + '0';
			LcdShowString(0,0,"red green yellow");
			LcdShowString(0,1,timeStr);
		}
	}
}

void main()
{
	int i = 0;
	addTIMER0Task(1000,ledZhen,1);
	addTIMER0Task(200,keyFun,2);
	   
	initTimer2(500);
	setTimer2Fun(timer2Fun);
	initLcd();
	
	
	//显示当前各颜色灯的延时数
	timeStr[0] = ' ';
	timeStr[1] = redTime / 10 + '0';
	timeStr[2] = redTime % 10 + '0';
	timeStr[3] = ' ';
	timeStr[4] = ' ';
	timeStr[5] = ' ';
	timeStr[6] = greenTime / 10 + '0';
	timeStr[7] = greenTime % 10 + '0';
	timeStr[8] = ' ';
	timeStr[9] = ' ';
	timeStr[10] = ' ';
	timeStr[11] = ' ';
	timeStr[12] = yellowTime / 10 + '0';
	timeStr[13] = yellowTime % 10 + '0';
	timeStr[14] = '\0';
	
	LcdShowString(0,0,"red green yellow");
	LcdShowString(0,1,timeStr);
	
	while(1)
	{
			updateTIMER0();
	}
}
