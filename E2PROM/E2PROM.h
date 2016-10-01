#ifndef  __E2PROM_H_
#define  __E2PROM_H_

#include "kingst.h"
#include "config.h"
#include "I2C.h"

/*******************************************************************************
 * 函数名称 : e2promReadByte
 * 函数介绍 :	读取e2prom的一个字节
 * 参数介绍 : addr : 读取字节的地址
 * 返回值   : 返回读取的字节
 ******************************************************************************/
extern unsigned char e2promReadByte(unsigned char addr);


/*******************************************************************************
 * 函数名称 : e2promWriteByte
 * 函数介绍 :	向e2prom写一个字节
 * 参数介绍 : addr : 要写字节的地址,data : 要写字节内容
 * 返回值   : 无
 ******************************************************************************/
extern void e2promWriteByte(unsigned char addr,unsigned char data);

/*******************************************************************************
 * 函数名称 : e2promRead
 * 函数介绍 :	从e2prom读取多个字节
 * 参数介绍 : addr : 读取字节的首地址.buff:读取内容的缓冲区,len:读取的长度
 * 返回值   : 无
 ******************************************************************************/
extern void e2promRead(unsigned char addr,unsigned char *buff, \
								unsigned char len);


/*******************************************************************************
 * 函数名称 : e2promWrite
 * 函数介绍 :	向e2prom写入多个字节
 * 参数介绍 : addr : 写入字节的首地址.buff:写入内容的缓冲区,len:写入的长度
 * 返回值   : 无
 ******************************************************************************/
extern void e2promWrite(unsigned char addr,unsigned char *buff, \
								unsigned char len);
								
/*******************************************************************************
 * 函数名称 : e2promWriteByPage
 * 函数介绍 :	通过页方式向e2prom写入多个字节
 * 参数介绍 : addr : 写入字节的首地址.buff:写入内容的缓冲区,len:写入的长度
 * 返回值   : 无
 ******************************************************************************/
extern void e2promWriteByPage(unsigned char addr,unsigned char *buff, \
								unsigned char len);
								
								
								
extern void E2Read(unsigned char addr, unsigned char *buf,unsigned char len);
extern void E2Write(unsigned char addr, unsigned char *buf,unsigned char len);
#endif //__E2PROM_H_
