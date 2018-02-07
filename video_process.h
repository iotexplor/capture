
#include "video_capture.h"
#include "video_writer.h"

#ifndef _VIDEO_PROCESS_H
#define _VIDEO_PROCESS_H


/*
说明：
VIDEO_640x480_YUYV_TO_YUYV
640x480指V4L2提取时的分辨率和保存视频文件时的分辨率
前面的YUYV指V4L2提取时的编码格式
后面的YUYV指保存视频文件时的编码格式

注意最终保存的视频文件封装格式都是avi！
*/
enum format_desc
{
	VIDEO_640x480_YUYV_TO_YUYV = 0,
	VIDEO_1280x720_YUYV_TO_YUYV,
	VIDEO_1920x1080_YUYV_TO_YUYV,
	
	VIDEO_640x480_MJPEG_TO_YUYV = 21,
	VIDEO_1280x720_MJPEG_TO_YUYV,
	VIDEO_1920x1080_MJPEG_TO_YUYV,
	
	VIDEO_640x480_MJPEG_TO_MJPEG = 31,
	VIDEO_1280x720_MJPEG_TO_MJPEG,
	VIDEO_1920x1080_MJPEG_TO_MJPEG,
	
	VIDEO_640x480_YUYV_TO_H264 = 41,
	VIDEO_1280x720_YUYV_TO_H264,
	VIDEO_1920x1080_YUYV_TO_H264,
	
	VIDEO_640x480_MJPEG_TO_H264,
	VIDEO_1280x720_MJPEG_TO_H264,	//最优选择
	VIDEO_1920x1080_MJPEG_TO_H264,
};

struct video_format
{
	enum format_desc desc;
	int width;
	int height;
	unsigned int in_fmt;	//V4L2_PIX_FMT_YUYV V4L2_PIX_FMT_MJPEG
	char *out_fmt;			//"YUYV" "MJPG" "h264"
};

int video_process_init(void);

int video_process_uninit(void);

int video_process(void);


#endif

