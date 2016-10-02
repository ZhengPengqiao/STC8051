#include "TIMER.h"
#include "LCD1602.h"
#include "DS1302.h"


void main()
{
	unsigned char psec=0xAA; //秒备份,初值 AA 确保首次读取时间后会刷新显示
	unsigned char str[12]; //字符串转换缓冲区
	DataStruct date;
	initDS1302(); //初始化实时时钟
	
	initLcd(); //初始化液晶
	
	while (1)
	{
		
		getDs1302Time(&date); //读取 DS1302 当前时间
		if (psec != date.seconds) //检测到时间有变化时刷新显示
		{
			str[0] = '2'; //添加年份的高 2 位:20
			str[1] = '0';
			str[2] = (date.year >> 4) + '0'; //“年”高位数字转换为 ASCII 码
			str[3] = (date.year&0x0F) + '0'; //“年”低位数字转换为 ASCII 码
			str[4] = '-'; //添加日期分隔符
			str[5] = (date.month >> 4) + '0'; //“月”
			str[6] = (date.month & 0x0F) + '0';
			str[7] = '-';
			str[8] = (date.day >> 4) + '0'; //“日”
			str[9] = (date.day&0x0F) + '0';
			str[10] = '\0';
			LcdShowString(0, 0, str); //显示到液晶的第一行
			str[0] = (date.week&0x0F) + '0'; //“星期”
			str[1] = '\0';
			LcdShowString(11, 0, "week");
			LcdShowString(15, 0, str); //显示到液晶的第一行
			str[0] = (date.hour >> 4) + '0'; //“时”
			str[1] = (date.hour&0x0F) + '0';
			str[2] = ':'; //添加时间分隔符
			str[3] = (date.minutes >> 4) + '0'; //“分”
			str[4] = (date.minutes&0x0F) + '0';
			str[5] = ':';
			str[6] = (date.seconds >> 4) + '0'; //“秒”
			str[7] = (date.seconds&0x0F) + '0';
			str[8] = '\0';
			LcdShowString(4, 1, str); //显示到液晶的第二行
			psec = date.seconds; //用当前值更新上次秒数
		}
	}
}
