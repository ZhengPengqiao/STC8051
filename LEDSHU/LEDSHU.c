/*******************************************************************************
 * 文件名称：LEDSHU.c
 * 作者    ：  郑朋桥
 * 文件介绍： 数码管相关函数实现
 * 
 ******************************************************************************/
#include "LEDSHU.h"
__xdata unsigned char LedChar[] = {
	0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8,
	0x80, 0x90, 0x88, 0x83, 0xC6, 0xA1, 0x86, 0x8E
	};
__xdata unsigned char data[] = {
	0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
};

/*******************************************************************************
 * 函数名称 : updateLedShu
 * 函数介绍 : 刷新数码管的显示,动态刷新
 * 参数介绍 : 无
 * 返回值  :  无
 ******************************************************************************/
void updateLedShu()
{
	static unsigned char ledShuNum = 0;
	ENLED = 0;
	ADDR3 = 1;
	LEDSHU = 0xFF;
	switch(ledShuNum)
	{
		case 0: 
			ADDR2 = 0;ADDR1 = 0;ADDR0 = 0; ledShuNum = 1; 
			LEDSHU = LedChar[ data[0] ];
		break;
		case 1: 
			ADDR2 = 0;ADDR1 = 0;ADDR0 = 1; ledShuNum = 2; 
			LEDSHU = LedChar[ data[1] ];
		break;
		case 2: 
			ADDR2 = 0;ADDR1 = 1;ADDR0 = 0; ledShuNum = 3; 
			LEDSHU = LedChar[ data[2] ];
		break;
		case 3: 
			ADDR2 = 0;ADDR1 = 1;ADDR0 = 1; ledShuNum = 4; 
			LEDSHU = LedChar[ data[3] ];
		break;
		case 4: 
			ADDR2 = 1;ADDR1 = 0;ADDR0 = 0; ledShuNum = 5; 
			LEDSHU = LedChar[ data[4] ];
		break;
		case 5: 
			ADDR2 = 1;ADDR1 = 0;ADDR0 = 1; ledShuNum = 0; 
			LEDSHU = LedChar[ data[5] ];
		break;
	}
}

/*******************************************************************************
 * 函数名称 : setLedShuNum
 * 函数介绍 : 设置数码管的值
 * 参数介绍 : ledShuArray  :  数码管各自要显示的内容
 * 返回值  :  无
 ******************************************************************************/
void setLedShuNum(unsigned char ledShuArray[])
{
	data[0] = ledShuArray[0];
	data[1] = ledShuArray[1];
	data[2] = ledShuArray[2];
	data[3] = ledShuArray[3];
	data[4] = ledShuArray[4];
	data[5] = ledShuArray[5];
}
