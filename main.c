
#include "video_process.h"


void capture_encode_thread(void) 
{
	int count = 0;
	for (;;) 
	{
		printf("\n\n-->this is the %dth frame\n", count);
		if (count++ >= 1000) // 采集100帧的数据
				{
			printf("------need to exit from thread------- \n");
			break;
		}

		video_process();
	}
}

int main(int argc, char **argv) 
{
	int ret;
	pthread_t mythread;	
	
	ret = video_process_init();
	ERROR(ret < 0, err0, "video_process_init\n");

	if (0 != pthread_create(&mythread, NULL, (void *) capture_encode_thread, NULL)) 
	{
		LOGE("thread create fail\n");
	}
	pthread_join(mythread, NULL);
	LOGI("-----------end program------------\n");
	video_process_uninit();

	return 0;
	
err0:
	return -1;
}
