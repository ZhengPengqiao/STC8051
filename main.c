#include "TIMER.h"
#include "LEDSHU.h"
#include "LED.h"
#include "HS0038.h"

__xdata unsigned char data[6] = {0,0,0,0,0,0};

void main()
{

	hs0038Init();
	
    while(1)
    {   
		if(irflag)
		{
			irflag = 0;
			data[5] = ircode[0] >> 4;
			data[4] = ircode[0] & 0x0F;
			data[1] = ircode[2] >> 4;
			data[0] = ircode[2]&0x0F;
		}
		updateLedShu(data);
		updateLed();
    }
}
