#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "KEY.h"
#include "BUZZER.h"

unsigned char data[] = {0,0,0,0,0,0};

void timer2Fun()
{
	static unsigned int i = 0;
	static unsigned int nu = 0;
	i++;
	if(i > 20)
	{
		i = 0;
		keyScan();
	}
	switch(nu)
	{
		case 0: updateLed();          nu = 1; break;
		case 1: updateLedShu(data);   nu = 0; break;
	}
	updateBuzz();
}

void main()
{
	unsigned int ledStatus = 0;
	initTimer2(928);
	setTimer2Fun(timer2Fun);
	while(1)
	{
		ledStatus = getKeyStatus();
		if(ledStatus & (1 << 0))
		{
			clearKeyStatus(0);
			setLedToggle(0);
		}
		
		if(ledStatus & (1 << 1))
		{
			clearKeyStatus(1);
			setLedToggle(1);
		}
	}
}
