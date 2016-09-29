#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "KEY.h"
#include "BUZZER.h"
#include "UART.h"
#include "LCD1602.h"
#include "HC05.h"
#include "DS18B20.h"
#include "stdio.h"

void main()
{

     char strTemp[6];
     float ucTemp;
	 
	 initLcd();
    
    while(1)
    {   
		
		int i;
        
        if(get18B20Ack())
        {
			LcdShowString(0,1,"ERR");
		}
        else
        {
			LcdShowString(0,1,"OK");
		}
        
        for(i = 0; i < 6; i++)
        {
			strTemp[i] = ' ';
		}
        ucTemp = getFloatDs18B20();           
        ucTemp *= 100;
        strTemp[0] = (int)ucTemp /1000+'0';       
        strTemp[1] = (int)ucTemp /100 %10+'0';
        strTemp[2] = '.';
        strTemp[3] = (int)ucTemp /10 %10+'0';
        strTemp[4] = (int)ucTemp %10+'0';
        
        strTemp[5] = '\0';
		LcdShowString(0,0,strTemp);

        delay10usValue(50000);
        delay10usValue(50000);
    }
}
