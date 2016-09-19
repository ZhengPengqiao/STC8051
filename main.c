#include "LED.h"
#include "TIMER.h"
#include "LEDSHU.h"
#include "LEDZHEN.h"
#include "KEY.h"

unsigned char data[] = {0,0,0,0,0,0};

void timer2Fun()
{
	static unsigned int i = 0;
	static unsigned int nu = 0;
	i++;
	if(i > 5)
	{
		i = 0;
		keyScan();
	}
	switch(nu)
	{
		case 0: updateLed();          nu = 1; break;
		case 1: updateLedShu(data);   nu = 0; break;
	}
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
		
		if(ledStatus & (1 << 2))
		{
			clearKeyStatus(2);
			setLedToggle(2);
		}
		
		if(ledStatus & (1 << 3))
		{
			clearKeyStatus(3);
			setLedToggle(3);
		}
		
		if(ledStatus & (1 << 4))
		{
			clearKeyStatus(4);
			setLedToggle(4);
		}
		
		if(ledStatus & (1 << 5))
		{
			clearKeyStatus(5);
			setLedToggle(5);
		}
		
		if(ledStatus & (1 << 6))
		{
			clearKeyStatus(6);
			setLedToggle(6);
		}
		
		if(ledStatus & (1 << 7))
		{
			clearKeyStatus(7);
			setLedToggle(7);
		}
		
		
		if(ledStatus & (1 << 8))
		{
			clearKeyStatus(8);
			setLedToggle(0);
		}
		
		if(ledStatus & (1 << 9))
		{
			clearKeyStatus(9);
			setLedToggle(1);
		}
		
		if(ledStatus & (1 << 10))
		{
			clearKeyStatus(10);
			setLedToggle(2);
		}
		
		if(ledStatus & (1 << 11))
		{
			clearKeyStatus(11);
			setLedToggle(3);
		}
		
		if(ledStatus & (1 << 12))
		{
			clearKeyStatus(12);
			setLedToggle(4);
		}
		
		if(ledStatus & (1 << 13))
		{
			clearKeyStatus(13);
			setLedToggle(5);
		}
		
		if(ledStatus & (1 << 14))
		{
			clearKeyStatus(14);
			setLedToggle(6);
		}
		
		if(ledStatus & (1 << 15))
		{
			clearKeyStatus(15);
			setLedToggle(7);
		}
	}
}
