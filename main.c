#include "TIMER.h"
#include "LEDSHU.h"
#include "LED.h"
#include "LCD1602.h"
__xdata unsigned char data[9];
__xdata unsigned char sh[] = "TH1=?,TL1=?";
void main()
{

	char a=0;
	char f = 0;
	unsigned int value;
	initLcd();
    while(1)
    {
		if(f == 0)
		{
			sh[4] = a + '0';
			sh[10] = a + '0';
			TH1 = a;
			TL1 = a;
		}
		else
		{
			sh[4] = a + '0';
			sh[10] = '0';
			TH1 = a;
			TL1 = 0;
		}
		LcdShowString(0,0,sh);
		
		value = TH1 * 256 + TL1;
		data[5] = value % 10 + '0';
		data[4] = value /10 % 10 + '0';
		data[3] = value /100% 10 + '0';
		data[2] = value /1000% 10 + '0';
		data[1] = value /10000% 10 + '0';
		data[0] = value /100000% 10 + '0';
		data[6] = '\0';
		LcdShowString(0,1,data);
		
		
		value = (TH1 << 8) + TL1;  //+的优先级比<<大.所以应将(TH1 << 8)括起来, 
									//不然会先＋然后在移位,这样就会出错
		
		data[5] = value % 10 + '0';
		data[4] = value /10 % 10 + '0';
		data[3] = value /100% 10 + '0';
		data[2] = value /1000% 10 + '0';
		data[1] = value /10000% 10 + '0';
		data[0] = value /100000% 10 + '0';
		data[6] = '\0';
		LcdShowString(8,1,data);
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		delay10usValue(50000);
		a++;
		
		if(a > 10)
		{
			a = 0;
		}
		
		if(f == 0 && a == 0)
		{
			f = 1;
		}
		else if(f == 1 && a == 0)
		{
			f = 0;
		}
	
    }
}
