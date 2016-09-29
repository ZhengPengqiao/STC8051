#ifndef __HC05_H_
#define __HC05_H_ 
#include <8052.h>
#include "kingst.h"
#include "config.h"
extern unsigned char HC05Init();
extern unsigned char HC05ExecCmd(char cmdStr[],int cmdLen,\
								char retStr [],int retStrLen);
extern unsigned char HC05GetRole(char retStr [],int retStrLen);
extern unsigned char HC05GetString(char Str [],int strLen);
#endif  
