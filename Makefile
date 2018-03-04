TOP_DIR := $(shell pwd)
APP = $(TOP_DIR)/camera_h264

CC = gcc
CFLAGS = -g 
# this is my x264-lib's path /usr/lib/x86_64-linux-gnu/libx264.so
# if you haven't install x264-lib, you cann't compile successfully. So install it!
LIBS = -lpthread -lx264 -lm 
#DEP_LIBS = -L$(TOP_DIR)/lib
HEADER =
OBJS = main.o video_process.o video_writer.o video_capture.o h264encoder.o utils.o color.o avilib.o

all:  $(OBJS)
	$(CC) -g -o $(APP) $(OBJS) $(LIBS) $(DEP_LIBS) 

clean:
	rm -f *.o a.out $(APP) core *~ luo.avi
