
#include "h264encoder.h"
#include "video_process.h"

//编码器
Encoder en;
char *h264_buf = NULL;

//usb camera
struct usb_camera *camera = NULL;
char *yuyv_buffer = NULL;

struct video_format *fmt = NULL;

struct video_format fmts[] =
        {
                /*
                V4L2_PIX_FMT_YUYV V4L2_PIX_FMT_MJPEG
                "YUYV" "MJPG" "h264"
                注意：尽量不要使用19208x1080分辨率，也不要使用"YUYV"格式来保存视频文件
                */
                {VIDEO_640x480_YUYV_TO_YUYV,     640,  480,  V4L2_PIX_FMT_YUYV,  "YUYV"},
                {VIDEO_1280x720_YUYV_TO_YUYV,    1280, 720,  V4L2_PIX_FMT_YUYV,  "YUYV"},
                {VIDEO_1920x1080_YUYV_TO_YUYV,   1920, 1080, V4L2_PIX_FMT_YUYV,  "YUYV"},

                {VIDEO_640x480_YUYV_TO_H264,     640,  480,  V4L2_PIX_FMT_YUYV,  "h264"},
                {VIDEO_1280x720_YUYV_TO_H264,    1280, 720,  V4L2_PIX_FMT_YUYV,  "h264"},
                {VIDEO_1920x1080_YUYV_TO_H264,   1920, 1080, V4L2_PIX_FMT_YUYV,  "h264"},

                {VIDEO_640x480_MJPEG_TO_YUYV,    640,  480,  V4L2_PIX_FMT_MJPEG, "YUYV"},
                {VIDEO_1280x720_MJPEG_TO_YUYV,   1280, 720,  V4L2_PIX_FMT_MJPEG, "YUYV"},
                {VIDEO_1920x1080_MJPEG_TO_YUYV,  1920, 1080, V4L2_PIX_FMT_MJPEG, "YUYV"},

                {VIDEO_640x480_MJPEG_TO_MJPEG,   640,  480,  V4L2_PIX_FMT_MJPEG, "MJPG"},
                {VIDEO_1280x720_MJPEG_TO_MJPEG,  1280, 720,  V4L2_PIX_FMT_MJPEG, "MJPG"},
                {VIDEO_1920x1080_MJPEG_TO_MJPEG, 1920, 1080, V4L2_PIX_FMT_MJPEG, "MJPG"},

                {VIDEO_640x480_MJPEG_TO_H264,    640,  480,  V4L2_PIX_FMT_MJPEG, "h264"},
                {VIDEO_1280x720_MJPEG_TO_H264,   1280, 720,  V4L2_PIX_FMT_MJPEG, "h264"},    //最优选择
                {VIDEO_1920x1080_MJPEG_TO_H264,  1920, 1080, V4L2_PIX_FMT_MJPEG, "h264"},

        };

static struct video_format *find_video_format(enum format_desc desc) {
    int i;
    int count = sizeof(fmts) / sizeof(fmts[0]);
    for (i = 0; i < count; i++) {
        if (desc == fmts[i].desc) {
            return &fmts[i];
        }
    }

    return NULL;
}

static int init_encoder(int width, int height) {
    compress_begin(&en, width, height);

    // 设置缓冲区
    h264_buf = calloc(1, width * height * 3);
    ERROR(NULL == h264_buf, err0, "calloc\n");
    return 0;
    err0:
    return -1;
}

static void close_encoder() {
    compress_end(&en);
    FREE(h264_buf);
}

int video_process_init(void) {
    int ret;
    const char *out_file = "luo.avi";

    camera = NULL;
    camera = calloc(1, sizeof(struct usb_camera));
    ERROR(NULL == camera, err0, "calloc struct usb_camera\n");

    /*
    说明：
    VIDEO_1280x720_MJPEG_TO_H264
    1280x720指V4L2提取时的分辨率和保存视频文件时的分辨率
    前面的MJPEG指V4L2提取时的编码格式
    后面的H264指保存视频文件时的编码格式

    注意最终保存的视频文件封装格式都是avi！
    */
    fmt = find_video_format(VIDEO_1280x720_YUYV_TO_H264);
    ERROR(NULL == fmt, err1, "Invalid video format\n");

    camera->device_name = "/dev/video0";
    camera->width = fmt->width;
    camera->height = fmt->height;
    camera->pixelformat = fmt->in_fmt;

    ret = video_capture_init(camera);
    ERROR(ret < 0, err2, "video_capture_init failed\n");

    ret = video_writer_init(out_file, camera->width, camera->height, fmt->out_fmt);
    ERROR(ret < 0, err3, "video_writer_init failed\n");

    ret = init_encoder(camera->width, camera->height);
    ERROR(ret < 0, err4, "init_encoder");

    yuyv_buffer = NULL;
    yuyv_buffer = calloc(1, camera->width * camera->height * 2);
    ERROR(NULL == yuyv_buffer, err5, "calloc yuyv_buffer\n");

    return 0;
    err0:
    return -1;
    err1:
    err2:
    FREE(camera);
    return -2;
    err3:
    video_capture_uninit(camera);
    FREE(camera);
    return -3;
    err4:
    video_writer_uninit();
    video_capture_uninit(camera);
    FREE(camera);
    return -4;
    err5:
    close_encoder();
    video_writer_uninit();
    video_capture_uninit(camera);
    FREE(camera);
    return -5;
}

int video_process_uninit(void) {
    FREE(yuyv_buffer);

    close_encoder();
    video_writer_uninit();
    video_capture_uninit(camera);
    FREE(camera);
    return 0;
}

int video_process(void) {
    int ret;
    int h264_length = 0;

    if (NULL == fmt) {
        LOGE("fmt == NULL\n");
        return -1;
    }

    ret = query_frame(camera);
    ERROR(ret < 0, err0, "query_frame\n");

    //V4L2_PIX_FMT_YUYV V4L2_PIX_FMT_MJPEG
    if (fmt->in_fmt == V4L2_PIX_FMT_YUYV) {
        if (0 == strcmp("YUYV", fmt->out_fmt)) {
            //YUYV422 to YUYV422; 不需要转格式, 直接写入
            video_write(camera->frame_buffer, camera->frame_bytesused);
        } else if (0 == strcmp("h264", fmt->out_fmt)) {
            //将YUYV422转换成YUV420，再进行h264压缩
            h264_length = compress_frame(&en, -1, camera->frame_buffer, h264_buf);
            if (h264_length > 0) {
                //向视频文件中写入一帧图像
                video_write(h264_buf, h264_length);
            }
        }
    } else if (fmt->in_fmt == V4L2_PIX_FMT_MJPEG) {
        int width = camera->width;
        int height = camera->height;
        LOGI("fmt->in_fmt == V4L2_PIX_FMT_MJPEG\n");
        if (0 == strcmp("MJPG", fmt->out_fmt)) {
            //MJPEG to MJPEG; 不需要转格式, 直接写入
            video_write(camera->frame_buffer, camera->frame_bytesused);
        } else if (0 == strcmp("YUYV", fmt->out_fmt)) {
            //decode MJPEG to YUYV422
            ret = jpeg_decode(&yuyv_buffer, camera->frame_buffer, &width, &height);
            ERROR(ret < 0, err1, "jpeg_decode failed!\n");
            LOGI("after jpeg_decode: width=%d, height=%d\n", width, height);

            //向视频文件中写入一帧图像
            video_write(yuyv_buffer, width * height * 2);
        } else if (0 == strcmp("h264", fmt->out_fmt)) {
            LOGI("0 == strcmp(h264, fmt->out_fmt)");
            //decode MJPEG to YUYV422
            ret = jpeg_decode(&yuyv_buffer, camera->frame_buffer, &width, &height);
            ERROR(ret < 0, err1, "jpeg_decode failed!\n");
            LOGI("after jpeg_decode: width=%d, height=%d\n", width, height);

            //将YUYV422转换成YUV420，再进行h264压缩
            h264_length = compress_frame(&en, -1, yuyv_buffer, h264_buf);
            if (h264_length > 0) {
                //向视频文件中写入一帧图像
                video_write(h264_buf, h264_length);
            }
        }
    }

    return 0;

    err0:
    err1:
    return -1;
}






		
		
		
		