#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "KEY.h"
#include "BUZZER.h"
#include "UART.h"
#include "LCD1602.h"

void main()
{
		char ch[22];
		initUart(9600);
		initLcd();
		while(1)
		{
				sendString("plese input",11);
				sendChar(':');
				readStringWait(ch,10);
				ch[10] = '\0';
				sendString(ch,10);
				sendNewLine();
				LcdShowString(0,0,ch);
		}
}




