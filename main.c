
#include "video_process.h"


void capture_encode_thread(void *i) {
    int *end = (int *) i;
    int count = 0;
    for (;;) {
        printf("\n\n-->this is the %dth frame\n", count);
        if (count++ >= 10) // 采集100帧的数据
        {
            printf("------need to exit from thread------- \n");
            break;
        }

        video_process();
    }
}

int main(int argc, char **argv) {


    struct camera_config a;
    a.device = argv[1];
    a.file = "test.avi";

    printf("Device: %s \n", a.device);
    printf("File  : %s \n", a.file);

    int frames = (int) argv[2];

    int ret;
    pthread_t mythread;
    ret = video_process_init(&a);
    ERROR(ret < 0, err0, "video_process_init\n");

    if (0 != pthread_create(&mythread, NULL, (void *) capture_encode_thread, &frames)) {
        LOGE("thread create fail\n");
    }
    pthread_join(mythread, NULL);
    LOGI("-----------end program------------\n");
    video_process_uninit();

    return 0;

    err0:
    return -1;
}
