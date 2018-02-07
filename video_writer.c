
#include "avilib.h"
#include "video_writer.h"

//avilib库中定义的文件数据结构
avi_t *out_fp = NULL;

int video_writer_init(const char *file_name, int width, int height, const char *out_fmt)
{
	ERROR(((NULL == file_name) || (NULL == out_fmt)), err0, "Invalid args\n");

	ERROR((strstr(file_name, ".avi") == NULL), err1, "Invalid file_name\n");	
	
	out_fp = AVI_open_output_file(file_name);
	ERROR(NULL == out_fp, err2, "AVI_open_output_file failed!\n");
		
	AVI_set_video(out_fp, width, height, 30, out_fmt);
	
	return 0;
err0:
err1:
err2:
	return -1;
}

int video_writer_uninit(void)
{
	if(NULL !=  out_fp)
	{
		AVI_close(out_fp);  //关闭文件描述符，并保存文件
	}	
	return 0;
}

void video_write(char *frame, int length) 
{
		
	if(NULL ==  out_fp)
	{
		return;
	}
		
	//向视频文件中写入一帧图像
	if(AVI_write_frame(out_fp, frame, length) < 0)
	{               
	   LOGE("AVI_write_frame fail in thread\n");
	}
	else
	{           
		LOGI("AVI_write_frame: length = %d\n", length);
		length = 0;
	}
}











