#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "KEY.h"
#include "BUZZER.h"
#include "UART.h"

void main()
{
	char ch[22];
	initUart(9600);
	
	while(1)
	{
		sendString("plese input",11);
		sendChar(':');
		readString(ch,10);
		sendString(ch,10);
		sendNewLine();
	}
}
