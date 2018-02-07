
#include "AlCommon.h"

#ifndef _VIDEO_WRITER_H
#define _VIDEO_WRITER_H

int video_writer_init(const char *file_name, int width, int height, const char *out_fmt);

int video_writer_uninit(void);

void video_write(char *frame, int length);

#endif

