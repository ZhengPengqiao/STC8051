#include "LEDZHEN.h"
/*******************************************************************************
 * 函数名称 : updateLedZhen
 * 函数介绍 : 刷新LED点阵的显示,动态刷新
 * 参数介绍 : data : 要显示的内容
 * 返回值  :  无
 ******************************************************************************/
void updateLedZhen(unsigned char image[])
{
	static unsigned char ledZhenNum = 0;
	LEDZHENDATA = 0xFF;
	ENLED = 0;   //使能U3/U4
	ADDR3 = 0;   //使能U4
	switch(ledZhenNum)
	{
		case 0: 
			ADDR2 = 0;ADDR1 = 0;ADDR0 = 0; ledZhenNum = 1; 
			LEDZHENDATA = image[0];
		break;
		case 1: 
			ADDR2 = 0;ADDR1 = 0;ADDR0 = 1; ledZhenNum = 2; 
			LEDZHENDATA = image[1];
		break;
		case 2: 
			ADDR2 = 0;ADDR1 = 1;ADDR0 = 0; ledZhenNum = 3; 
			LEDZHENDATA = image[2];
		break;
		case 3: 
			ADDR2 = 0;ADDR1 = 1;ADDR0 = 1; ledZhenNum = 4; 
			LEDZHENDATA = image[3];
		break;
		case 4: 
			ADDR2 = 1;ADDR1 = 0;ADDR0 = 0; ledZhenNum = 5; 
			LEDZHENDATA = image[4];
		break;
		case 5: 
			ADDR2 = 1;ADDR1 = 0;ADDR0 = 1; ledZhenNum = 6; 
			LEDZHENDATA = image[5];
		break;
		case 6: 
			ADDR2 = 1;ADDR1 = 1;ADDR0 = 0; ledZhenNum = 7; 
			LEDZHENDATA = image[6];
		break;
		case 7: 
			ADDR2 = 1;ADDR1 = 1;ADDR0 = 1; ledZhenNum = 0; 
			LEDZHENDATA = image[7];
		break;
	}
}
