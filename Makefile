#找到所有的源文件
SRC := $(shell find ./ -name "*.c")
#找到所有的头文件路径
INCLUDE := $(shell find ./ -name "*.h")
# dir : 取目录函数
DIR_INC = $(addprefix -I,$(dir $(INCLUDE))) 
#定义中间文件路径
DIR_OBJ = ./obj
#定义目标文件路径
DIR_BIN = .
#将.c文件替换成.rel文件
#在编译的时候,直接将目标文件的后缀替换,这样在以后编译文件时,可以更方便的写之后的Makefile
OBJ = $(patsubst %.c,%.rel,${SRC})
# $@代表规则中的目标文件名
main:$(DIR_OBJ) ${OBJ}
#编译链接*.o
	sdcc  $(addprefix $(DIR_OBJ)/,$(notdir ${OBJ}))  -o $(DIR_OBJ)/main.ihx
#将ihx转换为hex格式
	packihx $(DIR_OBJ)/main.ihx > $(DIR_OBJ)/main.hex
#将hex格式转换为bin
	objcopy -I ihex -O binary $(DIR_OBJ)/main.hex $(DIR_BIN)/main.bin
$(DIR_OBJ):
	mkdir $(DIR_OBJ)
	echo $(DIR_INC)
	echo $(SRC)
	echo $(OBJ)
#将*.c编译但不连接
%.rel:%.c
	sdcc -c $< $(DIR_INC) -o $(addprefix $(DIR_OBJ)/,$(notdir $@))
#清理编译产物
clean:
	rm -rf ./obj ./main.bin
