#include "LED.h"
#include "TIMER.h"
#include "LEDZHEN.h"

/*******************************************************************************
 *  函数名称: LedShuFun
 *  函数介绍: 定时任务到期时将会执行的函数
 *  参数介绍: 无
 *  返回值  : 无
 ******************************************************************************/
unsigned char ledarray[] = {0,0,0,0,0,0};
unsigned int a = 0;


__xdata unsigned char image[] = {
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0x7D,0x01,0x01,0x7D,0xFF,0xFF,0xE3,0xC1,
0x81,0x03,0x03,0x81,0xC1,0xE3,0xFF,0xFF,
0x81,0x01,0x3F,0x3F,0x3F,0x01,0x81,0xFF,
0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
};
signed char data[] = {0,0,0,0,0,0};
unsigned char index = 0;
void zhenFun()
{
        index ++;
        if(index > 32)
        {
                index = 0;
        }
}

void timer2Fun()
{
        static unsigned char i = 0;
        switch(i)
        {
                case 0:updateLedZhen(image+index);i = 0; break;   //定时刷新小灯状态,刷新小灯状态
        }   
}    

void main()
{
        addTIMER0Task(1000,zhenFun,1);
        initTimer2(600);
        setTimer2Fun(timer2Fun);
        while(1)
        {
            updateTIMER0();
        }
}
