#ifndef __HC05_H_
#define __HC05_H_ 
#include <8052.h>
#include "kingst.h"
#include "config.h"
extern unsigned char HC05Init();
extern void HC05CfgCmd(unsigned char *str);
extern unsigned char HC05GetRole(char cmdStr[],int cmdLen,\
								char retStr [],int retStrLen);
extern unsigned char HC05SetCmd(unsigned char *atstr);
#endif  
