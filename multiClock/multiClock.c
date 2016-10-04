#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "LCD1602.h"
#include "KEY.h"
#include "DS1302.h"
#include "DS18B20.h"
#include "multiClock.h"
#include "BUZZER.h"

//点阵要显示的图像,周一到周日
__xdata unsigned char image[] = {
0xC7,0xC1,0xC7,0xC7,0xC7,0xC7,0xC7,0x81,
0xC3,0x89,0x9F,0x8F,0xCF,0xE7,0xF3,0x81,
0xC3,0x89,0x8F,0xC3,0x8F,0x9F,0x89,0xC3,
0x9F,0x8F,0x87,0x93,0x99,0x01,0x9F,0x9F,
0x81,0xF9,0xF9,0xC1,0x8F,0x9F,0x89,0xC3,
0x87,0xF3,0xF1,0x81,0x91,0xB9,0x91,0xC3,
0x81,0x8F,0xCF,0xC7,0xC7,0xE7,0xE3,0xE3,
};

//用来计算存储LCD将要显示的信息
__xdata unsigned char lcdStr0[17];

//数码管显示的数字
__xdata signed char data[] = {0,0,0,0,0,0};

//点阵显示的偏移位置,(星期-1)的8倍
__xdata unsigned char index = 0;


//LCD光标显示坐标
unsigned char cursorIndex = 0;

//记录温度
unsigned char tempData = 0;

//0: 显示数据:  年月日.温度.   定时.
//1: 编辑状态:  年月日,星期,   时分秒,定时,
unsigned lcdStatue = 0;
//记录蜂鸣器的状态
unsigned buzzerStatue = 0;
unsigned buzzerStop = 0;

__xdata DataStruct date;
unsigned char hour = 0,minutes = 0;

void ledRun()
{
	static unsigned char ledStatus = 0;
	ledStatus >>= 1;
	if( (ledStatus & 0x10) == 0)
	{
		ledStatus |= 0x80;
	}
	setLedStatus(ledStatus);
}

//刷新显示led.点阵,数码管
void timer2Fun()
{
	static unsigned char keyTimer = 0;
	static unsigned char i = 0;
	
	if(buzzerStatue)
	{
		updateBuzz();
		updateBuzz();
	}
	switch(i)
	{
			case 0:updateLedZhen(image+index); i = 1;break;
			case 1:updateLedShu(data);i = 2;break;
			case 2:updateLed();i = 0; break;
	}
	
	if(buzzerStatue)
	{
		updateBuzz();
		updateBuzz();
	}
	keyTimer++;
	if(keyTimer > 10)
	{
		keyScan();
		keyTimer = 0;
	}
	
	if(buzzerStatue)
	{
		updateBuzz();
		updateBuzz();
	}
	
}

void showDateTimeAndBuzzerTimer()
{
	lcdStr0[0] = '2'; //添加年份的高 2 位:20
	lcdStr0[1] = '0';
	lcdStr0[2] = (date.year /10 % 10) + '0'; //“年”高位数字转换为 ASCII 码
	lcdStr0[3] = (date.year % 10) + '0'; //“年”低位数字转换为 ASCII 码
	lcdStr0[4] = '-'; //添加日期分隔符
	lcdStr0[5] = (date.month / 10) + '0'; //“月”
	lcdStr0[6] = (date.month % 10) + '0';
	lcdStr0[7] = '-';
	lcdStr0[8] = (date.day / 10) + '0'; //“日”
	lcdStr0[9] = (date.day % 10) + '0';
	lcdStr0[10] = ' ';
	lcdStr0[11] = 'w';
	lcdStr0[12] = 'e';
	lcdStr0[13] = 'e';
	lcdStr0[14] = 'k';
	lcdStr0[15] = date.week + '0';
	lcdStr0[16] = '\0';
	LcdShowString(0, 0, lcdStr0); //显示到液晶的第一行

	lcdStr0[0] = (date.hour /10 % 10) + '0';
	lcdStr0[1] = (date.hour  % 10) + '0';
	lcdStr0[2] = '-';
	lcdStr0[3] = (date.minutes / 10) + '0';
	lcdStr0[4] = (date.minutes % 10) + '0';
	lcdStr0[5] = '-';
	lcdStr0[6] = (date.seconds / 10) + '0';
	lcdStr0[7] = (date.seconds % 10) + '0';
	lcdStr0[8] = 'B';
	lcdStr0[9] = 'Z';
	lcdStr0[10] = ':';
	lcdStr0[11] = (hour /10 % 10) + '0';
	lcdStr0[12] = (hour  % 10) + '0';
	lcdStr0[13] = ':';
	lcdStr0[14] = (minutes / 10) + '0';
	lcdStr0[15] = (minutes % 10) + '0';
	lcdStr0[16] = '\0';
	LcdShowString(0, 1, lcdStr0); //显示到液晶的第一行

}

void keyFun()
{
	unsigned int keyStatus = 0;
	char number = -1;
	keyStatus = getKeyStatus();
	
	//非编辑状态时候,只检测是否要进入编辑状态,和定时到达时停止蜂鸣器
	if(keyStatus & (1 << 14)) //按键ent
	{
		clearAllKeyStatus();
		lcdStatue = 1;
		LcdOpenCursor();
		showDateTimeAndBuzzerTimer();
		rightCursor();
	}
	else if(keyStatus & (1 << 13)) //按键esc
	{
		setDs1302Time(&date);
		clearKeyStatus(13);
		LcdCloseCursor();
		lcdStatue = 0;
		buzzerStatue = 0;
		buzzerStop = 0;
		showNoEditLcdDate();
	}
	
	
	//用于停止蜂鸣器
	if(keyStatus & (1 << 3)) //按键up
	{
		clearKeyStatus(7);
		buzzerStop = 1;
		buzzerStatue = 0;
	}
	else if(keyStatus & (1 << 11)) //按键down
	{
		clearKeyStatus(7);
		buzzerStop = 1;
		buzzerStatue = 0;
	}

	if(lcdStatue == 1)
	{
		if(keyStatus & (1 << 0))  //数字1
		{
			number = 1;
			clearKeyStatus(0);
		}
		else if(keyStatus & (1 << 1)) //数字2
		{
			number = 2;
			clearKeyStatus(1);
		}
		else if(keyStatus & (1 << 2)) //数字3
		{
			number = 3;
			clearKeyStatus(2);
		}
		else if(keyStatus & (1 << 4)) //数字4
		{
			number = 4;
			clearKeyStatus(4);
		}
		else if(keyStatus & (1 << 5)) //数字5
		{
			number = 5;
			clearKeyStatus(5);
		}
		else if(keyStatus & (1 << 6)) //数字6
		{
			number = 6;
			clearKeyStatus(6);
		}
		else if(keyStatus & (1 << 8)) //数字7
		{
			number = 7;
			clearKeyStatus(8);
		}
		else if(keyStatus & (1 << 9)) //数字8
		{
			number = 8;
			clearKeyStatus(9);
		}
		else if(keyStatus & (1 << 10)) //数字9
		{
			number = 9;
			clearKeyStatus(10);
		}

		else if(keyStatus & (1 << 12)) //数字0
		{
			number = 0;
			clearKeyStatus(12);
		}
		
		else if(keyStatus & (1 << 15)) //按键rgiht
		{
			clearKeyStatus(15);
			rightCursor();
		}
		else if(keyStatus & (1 << 7)) //按键left
		{
			clearKeyStatus(7);
			leftCursor();
		}

		
		if(number != -1)
		{
			changeNumber(number);
			number = -1;
		}
	}
}

//在编辑模式下,设置信息
void changeNumber(char number)
{
	lcdStr0[0] = number + '0';
	lcdStr0[1] = '\0';
	switch(cursorIndex)
	{
		case 0:
			LcdShowString(15,1,lcdStr0);
			minutes = minutes/10*10 + number;  
			break;
		case 1:
			LcdShowString(2,0,lcdStr0);
			date.year = date.year%10 + number*10;
			break;
		case 2:
			LcdShowString(3,0,lcdStr0);
			date.year = date.year/10*10 + number; 
			break;
		case 3:
			LcdShowString(5,0,lcdStr0); 
			date.month = date.month%10 + number*10; 
			break;
		case 4:
			LcdShowString(6,0,lcdStr0); 
			date.month = date.month/10*10 + number; 
			break;
		case 5:
			LcdShowString(8,0,lcdStr0); 
			date.day = date.day%10 + number*10; 
			break;
		case 6:
			LcdShowString(9,0,lcdStr0); 
			date.day = date.day/10*10 + number; 
			break;
		case 7:
			LcdShowString(15,0,lcdStr0); 
			date.week = number; 
			break;
		case 8:
			LcdShowString(0,1,lcdStr0);
			date.hour = date.hour%10 + number*10; 
			break;
		case 9:
			LcdShowString(1,1,lcdStr0); 
			date.hour = date.hour/10*10 + number; 
			break;
		case 10:
			LcdShowString(3,1,lcdStr0); 
			date.minutes = date.minutes%10 + number*10; 
			break;
		case 11:
			LcdShowString(4,1,lcdStr0); 
			date.minutes = date.minutes/10*10 + number; 
			break;
		case 12:
			LcdShowString(6,1,lcdStr0); 
			date.seconds = date.seconds%10 + number*10; 
			break;
		case 13:
			LcdShowString(7,1,lcdStr0); 
			date.seconds = date.seconds/10*10 + number; 
			break;
		case 14:
			LcdShowString(11,1,lcdStr0); 
			hour = hour%10 + number*10;
			break;
		case 15:
			LcdShowString(12,1,lcdStr0); 
			hour = hour/10*10 + number;
			break;
		case 16:
			LcdShowString(14,1,lcdStr0);
			minutes = minutes%10 + number*10; 
			break;
	}
	rightCursor();
}

//1000毫秒刷新一次,更新数码管的时间.
void timerDataUpdate()
{
	if(lcdStatue == 0)
	{
		getDs1302Time(&date); //读取 DS1302 当前时间
		data[5] = date.hour / 10;
		data[4] = date.hour % 10;
		data[3] = date.minutes / 10;
		data[2] = date.minutes % 10;
		data[1] = date.seconds / 10;
		data[0] = date.seconds % 10;
		
		if(date.hour >= hour && date.minutes >= minutes && \
						date.minutes < (minutes+1) && buzzerStop == 0)
		{
			buzzerStatue = 1;
		}
		
		
		index = (date.week-1)*8;
	}
}

//非编辑状态下的Lcd界面
void showNoEditLcdDate()
{
	LcdFullClear();
	tempData = getDs18B20();
	lcdStr0[0] = '2'; //添加年份的高 2 位:20
	lcdStr0[1] = '0';
	lcdStr0[2] = (date.year /10 % 10) + '0'; //“年”高位数字转换为 ASCII 码
	lcdStr0[3] = (date.year % 10) + '0'; //“年”低位数字转换为 ASCII 码
	lcdStr0[4] = '-'; //添加日期分隔符
	lcdStr0[5] = (date.month / 10) + '0'; //“月”
	lcdStr0[6] = (date.month % 10) + '0';
	lcdStr0[7] = '-';
	lcdStr0[8] = (date.day / 10) + '0'; //“日”
	lcdStr0[9] = (date.day % 10) + '0';
	lcdStr0[10] = ' ';
	lcdStr0[11] = 'T';
	lcdStr0[12] = ':';
	lcdStr0[13] = tempData /10 %10 + '0';
	lcdStr0[14] = tempData %10 + '0';
	lcdStr0[15] = 'C';
	lcdStr0[16] = '\0';
	LcdShowString(0, 0, lcdStr0); //显示到液晶的第一行

	lcdStr0[0] = 'B';
	lcdStr0[1] = 'Z';
	lcdStr0[2] = 'Z';
	lcdStr0[3] = 'E';
	lcdStr0[4] = 'R';
	lcdStr0[5] = ':';
	lcdStr0[6] = (hour /10 % 10) + '0';
	lcdStr0[7] = (hour  % 10) + '0';
	lcdStr0[8] = ':';
	lcdStr0[9] = (minutes / 10) + '0';
	lcdStr0[10] = (minutes % 10) + '0';
	lcdStr0[11] = '\0';
	LcdShowString(0, 1, lcdStr0); //显示到液晶的第二行
}
//4000毫秒刷新一次
void timerLcdUpdate()
{
	if( lcdStatue == 0)
	{
		showNoEditLcdDate();
	}
}

void tempFun()
{
	tempData = getDs18B20();
}

void initShow()
{
	getDs1302Time(&date); //读取 DS1302 当前时间
	timerDataUpdate();
	//先显示一次信息
	tempData = getDs18B20();
	lcdStr0[0] = '2'; //添加年份的高 2 位:20
	lcdStr0[1] = '0';
	lcdStr0[2] = (date.year /10 % 10) + '0'; //“年”高位数字转换为 ASCII 码
	lcdStr0[3] = (date.year % 10) + '0'; //“年”低位数字转换为 ASCII 码
	lcdStr0[4] = '-'; //添加日期分隔符
	lcdStr0[5] = (date.month / 10) + '0'; //“月”
	lcdStr0[6] = (date.month % 10) + '0';
	lcdStr0[7] = '-';
	lcdStr0[8] = (date.day / 10) + '0'; //“日”
	lcdStr0[9] = (date.day % 10) + '0';
	lcdStr0[10] = ' ';
	lcdStr0[11] = 'T';
	lcdStr0[12] = ':';
	lcdStr0[13] = tempData /10 %10 + '0';
	lcdStr0[14] = tempData %10 + '0';
	lcdStr0[15] = 'C';
	lcdStr0[16] = '\0';
	LcdShowString(0, 0, lcdStr0); //显示到液晶的第一行
}


//向左移动光标
void leftCursor()
{
	switch(cursorIndex)
	{
		case 2:LcdSetCursor(2,0); cursorIndex = 1; break;    //年 十位
		case 3:LcdSetCursor(3,0); cursorIndex = 2; break;    //年 个位
		case 4:LcdSetCursor(5,0); cursorIndex = 3; break;    //月 十位
		case 5:LcdSetCursor(6,0); cursorIndex = 4; break;    //月 个位
		case 6:LcdSetCursor(8,0); cursorIndex = 5; break;    //日 十位
		case 7:LcdSetCursor(9,0); cursorIndex = 6; break;    //日 个位
		case 8:LcdSetCursor(15,0); cursorIndex = 7; break;   //星期
		case 9:LcdSetCursor(0,1); cursorIndex = 8; break;    //时 十位
		case 10:LcdSetCursor(1,1); cursorIndex = 9; break;    //时 个位
		case 11:LcdSetCursor(3,1); cursorIndex = 10; break;   //分 十位
		case 12:LcdSetCursor(4,1); cursorIndex = 11; break;  //分 个位
		case 13:LcdSetCursor(6,1); cursorIndex = 12; break;  //秒 十位
		case 14:LcdSetCursor(7,1); cursorIndex = 13; break;  //秒 个位
		case 15:LcdSetCursor(11,1); cursorIndex = 14; break; //定时 时 十位
		case 16:LcdSetCursor(12,1); cursorIndex = 15; break; //定时 时 个位
		case 0:LcdSetCursor(14,1); cursorIndex = 16; break; //定时 分 十位
		default:LcdSetCursor(15,1); cursorIndex = 0; break;  //定时 分 个位
	}
}
//向右移动光标
void rightCursor()
{
	switch(cursorIndex)
	{
		case 0:LcdSetCursor(2,0); cursorIndex = 1; break;    //年 十位
		case 1:LcdSetCursor(3,0); cursorIndex = 2; break;    //年 个位
		case 2:LcdSetCursor(5,0); cursorIndex = 3; break;    //月 十位
		case 3:LcdSetCursor(6,0); cursorIndex = 4; break;    //月 个位
		case 4:LcdSetCursor(8,0); cursorIndex = 5; break;    //日 十位
		case 5:LcdSetCursor(9,0); cursorIndex = 6; break;    //日 个位
		case 6:LcdSetCursor(15,0); cursorIndex = 7; break;   //星期
		case 7:LcdSetCursor(0,1); cursorIndex = 8; break;    //时 十位
		case 8:LcdSetCursor(1,1); cursorIndex = 9; break;    //时 个位
		case 9:LcdSetCursor(3,1); cursorIndex = 10; break;   //分 十位
		case 10:LcdSetCursor(4,1); cursorIndex = 11; break;  //分 个位
		case 11:LcdSetCursor(6,1); cursorIndex = 12; break;  //秒 十位
		case 12:LcdSetCursor(7,1); cursorIndex = 13; break;  //秒 个位
		case 13:LcdSetCursor(11,1); cursorIndex = 14; break; //定时 时 十位
		case 14:LcdSetCursor(12,1); cursorIndex = 15; break; //定时 时 个位
		case 15:LcdSetCursor(14,1); cursorIndex = 16; break; //定时 分 十位
		default:LcdSetCursor(15,1); cursorIndex = 0; break;  //定时 分 个位
	}
}
