#include "E2PROM.h"
#include "TIMER.h"
/*******************************************************************************
 * 函数名称 : e2promReadByte
 * 函数介绍 :	读取e2prom的一个字节
 * 参数介绍 : addr : 读取字节的地址
 * 返回值   : 返回读取的字节
 ******************************************************************************/
unsigned char e2promReadByte(unsigned char addr)
{
	unsigned char da;
	do
	{
		i2cStart();
		if( i2cWrite(0x50<<1) )  //寻址器件,后续为写操作
		{
			break;
		}
		i2cStop();
	}while(1);
	i2cWrite(addr);     //写入地址
	i2cStart();
	i2cWrite( (0x50<<1) | 0x01);  //寻址器件,后续为读操作
	da = i2cReadACK();            //读取一个字节
	i2cStop();
	
	return da;
}


/*******************************************************************************
 * 函数名称 : e2promWriteByte
 * 函数介绍 :	向e2prom写一个字节
 * 参数介绍 : addr : 要写字节的地址,data : 要写字节内容
 * 返回值   : 无
 ******************************************************************************/
void e2promWriteByte(unsigned char addr,unsigned char data)
{
	do
	{
		i2cStart();
		if( i2cWrite(0x50<<1) )  //寻址器件,后续为写操作
		{
			break;
		}
		i2cStop();
	}while(1);
	i2cWrite(addr);     //写入地址
	i2cWrite(data);     //写入内容
	i2cStop();
}

/*******************************************************************************
 * 函数名称 : e2promRead
 * 函数介绍 :	从e2prom读取多个字节
 * 参数介绍 : addr : 读取字节的首地址.buff:读取内容的缓冲区,len:读取的长度
 * 返回值   : 无
 ******************************************************************************/
void e2promRead(unsigned char addr,unsigned char *buff, \
								unsigned char len)
{
	do
	{
		i2cStart();
		if( i2cWrite(0x50<<1) )  //寻址器件,后续为写操作
		{
			break;
		}
		i2cStop();
	}while(1);
	i2cWrite(addr);     //写入地址
	i2cStart();  
	i2cWrite( (0x50<<1) | 0x01);  //寻址器件,后续为读操作
	while( len > 1 )
	{
		*buff = i2cReadACK();
		len--;
		buff++;
	}
	
	*buff++ = i2cReadNAK();
	i2cStop();
	
}

/*******************************************************************************
 * 函数名称 : e2promWrite
 * 函数介绍 :	向e2prom写入多个字节
 * 参数介绍 : addr : 写入字节的首地址.buff:写入内容的缓冲区,len:写入的长度
 * 返回值   : 无
 ******************************************************************************/
void e2promWrite(unsigned char addr,unsigned char *buff, \
								unsigned char len)
{
	while(len--)
	{
		e2promWriteByte(addr,*buff);
		buff++;
		addr++;
	}
}


/*******************************************************************************
 * 函数名称 : e2promWriteByPage
 * 函数介绍 :	通过页方式向e2prom写入多个字节
 * 参数介绍 : addr : 写入字节的首地址.buff:写入内容的缓冲区,len:写入的长度
 * 返回值   : 无
 ******************************************************************************/
void e2promWriteByPage(unsigned char addr,unsigned char *buff, \
								unsigned char len)
{
	while(len > 0)
	{
		do
		{
			i2cStart();
			if( i2cWrite(0x50<<1) )  //寻址器件,后续为写操作
			{
				break;
			}
			i2cStop();
		}while(1);
		i2cWrite(addr);
		while(len > 0)
		{
			i2cWrite(*buff++);     //写入内容
			len--;
			addr++;
			if( (addr & 0x07) == 0)
			{
				break;
			}
		}
		i2cStop();
			
	}
}



