#include "TIMER.h"
#include "LEDSHU.h"
#include "LCD1602.h"
#include "MOTOR.h"

void main()
{
	int i;
	unsigned int ch = 0;
	unsigned int times = 0;

	times = motorRunAngle(180);  //得到180度对应的转动次数
    while(1)
    {

		if(ch <= times)
		{
			motorStep();
		}
		
		for(i = 0; i < 200; i++)
		{
			
		}
		
		ch++;

    }
}
