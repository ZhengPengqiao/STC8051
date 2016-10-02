#include "TIMER.h"
#include "LCD1602.h"
#include "DS1302.h"


unsigned char timeStatua = 0;
void fun()
{
	timeStatua = 1;
}

void main()
{
	unsigned char psec=0xAA; //秒备份,初值 AA 确保首次读取时间后会刷新显示
	unsigned char time[8]; //当前时间数组
	unsigned char str[12]; //字符串转换缓冲区
	initDS1302(); //初始化实时时钟
	
	
	
	initLcd(); //初始化液晶
	addTIMER0Task(200,fun,1);
	while (1)
	{
		updateTIMER0();
		if( timeStatua != 0)
		{ 
			timeStatua == 0;
			ds1302BurstRead(time); //读取 DS1302 当前时间
			if (psec != time[0])			//检测到时间有变化时刷新显示
			{
				str[0] = '2'; //添加年份的高 2 位:20
				str[1] = '0';
				str[2] = (time[6] >> 4) + '0'; //“年”高位数字转换为 ASCII 码
				str[3] = (time[6]&0x0F) + '0'; //“年”低位数字转换为 ASCII 码
				str[4] = '-'; //添加日期分隔符
				str[5] = (time[4] >> 4) + '0'; //“月”
				str[6] = (time[4]&0x0F) + '0';
				str[7] = '-';
				str[8] = (time[3] >> 4) + '0'; //“日”
				str[9] = (time[3]&0x0F) + '0';
				str[10] = '\0';
				LcdShowString(0, 0, str); //显示到液晶的第一行
				str[0] = (time[5]&0x0F) + '0'; //“星期”
				str[1] = '\0';
				LcdShowString(11, 0, "week");
				LcdShowString(15, 0, str); //显示到液晶的第一行
				str[0] = (time[2] >> 4) + '0'; //“时”
				str[1] = (time[2]&0x0F) + '0';
				str[2] = ':'; //添加时间分隔符
				str[3] = (time[1] >> 4) + '0'; //“分”
				str[4] = (time[1]&0x0F) + '0';
				str[5] = ':';
				str[6] = (time[0] >> 4) + '0'; //“秒”
				str[7] = (time[0]&0x0F) + '0';
				str[8] = '\0';
				LcdShowString(4, 1, str); //显示到液晶的第二行
				psec = time[0]; //用当前值更新上次秒数
			
			}
		}
	}
}
