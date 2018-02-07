cmake_minimum_required(VERSION 3.9)
project(uvc_avilib_3)

set(CMAKE_CXX_STANDARD 11)

add_executable(uvc_avilib_3
        AlCommon.h
        avilib.c
        avilib.h
        color.c
        color.h
        h264encoder.c
        h264encoder.h
        huffman.h
        main.c
        utils.c
        utils.h
        video_capture.c
        video_capture.h
        video_process.c
        video_process.h
        video_writer.c
        video_writer.h)
