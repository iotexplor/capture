# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Volumes/share/capture

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Volumes/share/capture/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/uvc_avilib_3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uvc_avilib_3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uvc_avilib_3.dir/flags.make

CMakeFiles/uvc_avilib_3.dir/avilib.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/avilib.c.o: ../avilib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/uvc_avilib_3.dir/avilib.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/avilib.c.o   -c /Volumes/share/capture/avilib.c

CMakeFiles/uvc_avilib_3.dir/avilib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/avilib.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/avilib.c > CMakeFiles/uvc_avilib_3.dir/avilib.c.i

CMakeFiles/uvc_avilib_3.dir/avilib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/avilib.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/avilib.c -o CMakeFiles/uvc_avilib_3.dir/avilib.c.s

CMakeFiles/uvc_avilib_3.dir/avilib.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/avilib.c.o.requires

CMakeFiles/uvc_avilib_3.dir/avilib.c.o.provides: CMakeFiles/uvc_avilib_3.dir/avilib.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/avilib.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/avilib.c.o.provides

CMakeFiles/uvc_avilib_3.dir/avilib.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/avilib.c.o


CMakeFiles/uvc_avilib_3.dir/color.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/color.c.o: ../color.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/uvc_avilib_3.dir/color.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/color.c.o   -c /Volumes/share/capture/color.c

CMakeFiles/uvc_avilib_3.dir/color.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/color.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/color.c > CMakeFiles/uvc_avilib_3.dir/color.c.i

CMakeFiles/uvc_avilib_3.dir/color.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/color.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/color.c -o CMakeFiles/uvc_avilib_3.dir/color.c.s

CMakeFiles/uvc_avilib_3.dir/color.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/color.c.o.requires

CMakeFiles/uvc_avilib_3.dir/color.c.o.provides: CMakeFiles/uvc_avilib_3.dir/color.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/color.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/color.c.o.provides

CMakeFiles/uvc_avilib_3.dir/color.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/color.c.o


CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o: ../h264encoder.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o   -c /Volumes/share/capture/h264encoder.c

CMakeFiles/uvc_avilib_3.dir/h264encoder.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/h264encoder.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/h264encoder.c > CMakeFiles/uvc_avilib_3.dir/h264encoder.c.i

CMakeFiles/uvc_avilib_3.dir/h264encoder.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/h264encoder.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/h264encoder.c -o CMakeFiles/uvc_avilib_3.dir/h264encoder.c.s

CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.requires

CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.provides: CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.provides

CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o


CMakeFiles/uvc_avilib_3.dir/main.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/uvc_avilib_3.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/main.c.o   -c /Volumes/share/capture/main.c

CMakeFiles/uvc_avilib_3.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/main.c > CMakeFiles/uvc_avilib_3.dir/main.c.i

CMakeFiles/uvc_avilib_3.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/main.c -o CMakeFiles/uvc_avilib_3.dir/main.c.s

CMakeFiles/uvc_avilib_3.dir/main.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/main.c.o.requires

CMakeFiles/uvc_avilib_3.dir/main.c.o.provides: CMakeFiles/uvc_avilib_3.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/main.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/main.c.o.provides

CMakeFiles/uvc_avilib_3.dir/main.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/main.c.o


CMakeFiles/uvc_avilib_3.dir/utils.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/utils.c.o: ../utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/uvc_avilib_3.dir/utils.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/utils.c.o   -c /Volumes/share/capture/utils.c

CMakeFiles/uvc_avilib_3.dir/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/utils.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/utils.c > CMakeFiles/uvc_avilib_3.dir/utils.c.i

CMakeFiles/uvc_avilib_3.dir/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/utils.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/utils.c -o CMakeFiles/uvc_avilib_3.dir/utils.c.s

CMakeFiles/uvc_avilib_3.dir/utils.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/utils.c.o.requires

CMakeFiles/uvc_avilib_3.dir/utils.c.o.provides: CMakeFiles/uvc_avilib_3.dir/utils.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/utils.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/utils.c.o.provides

CMakeFiles/uvc_avilib_3.dir/utils.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/utils.c.o


CMakeFiles/uvc_avilib_3.dir/video_capture.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/video_capture.c.o: ../video_capture.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/uvc_avilib_3.dir/video_capture.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/video_capture.c.o   -c /Volumes/share/capture/video_capture.c

CMakeFiles/uvc_avilib_3.dir/video_capture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/video_capture.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/video_capture.c > CMakeFiles/uvc_avilib_3.dir/video_capture.c.i

CMakeFiles/uvc_avilib_3.dir/video_capture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/video_capture.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/video_capture.c -o CMakeFiles/uvc_avilib_3.dir/video_capture.c.s

CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.requires

CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.provides: CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.provides

CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/video_capture.c.o


CMakeFiles/uvc_avilib_3.dir/video_process.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/video_process.c.o: ../video_process.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/uvc_avilib_3.dir/video_process.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/video_process.c.o   -c /Volumes/share/capture/video_process.c

CMakeFiles/uvc_avilib_3.dir/video_process.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/video_process.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/video_process.c > CMakeFiles/uvc_avilib_3.dir/video_process.c.i

CMakeFiles/uvc_avilib_3.dir/video_process.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/video_process.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/video_process.c -o CMakeFiles/uvc_avilib_3.dir/video_process.c.s

CMakeFiles/uvc_avilib_3.dir/video_process.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/video_process.c.o.requires

CMakeFiles/uvc_avilib_3.dir/video_process.c.o.provides: CMakeFiles/uvc_avilib_3.dir/video_process.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/video_process.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/video_process.c.o.provides

CMakeFiles/uvc_avilib_3.dir/video_process.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/video_process.c.o


CMakeFiles/uvc_avilib_3.dir/video_writer.c.o: CMakeFiles/uvc_avilib_3.dir/flags.make
CMakeFiles/uvc_avilib_3.dir/video_writer.c.o: ../video_writer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/uvc_avilib_3.dir/video_writer.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uvc_avilib_3.dir/video_writer.c.o   -c /Volumes/share/capture/video_writer.c

CMakeFiles/uvc_avilib_3.dir/video_writer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uvc_avilib_3.dir/video_writer.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Volumes/share/capture/video_writer.c > CMakeFiles/uvc_avilib_3.dir/video_writer.c.i

CMakeFiles/uvc_avilib_3.dir/video_writer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uvc_avilib_3.dir/video_writer.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Volumes/share/capture/video_writer.c -o CMakeFiles/uvc_avilib_3.dir/video_writer.c.s

CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.requires:

.PHONY : CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.requires

CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.provides: CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.requires
	$(MAKE) -f CMakeFiles/uvc_avilib_3.dir/build.make CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.provides.build
.PHONY : CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.provides

CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.provides.build: CMakeFiles/uvc_avilib_3.dir/video_writer.c.o


# Object files for target uvc_avilib_3
uvc_avilib_3_OBJECTS = \
"CMakeFiles/uvc_avilib_3.dir/avilib.c.o" \
"CMakeFiles/uvc_avilib_3.dir/color.c.o" \
"CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o" \
"CMakeFiles/uvc_avilib_3.dir/main.c.o" \
"CMakeFiles/uvc_avilib_3.dir/utils.c.o" \
"CMakeFiles/uvc_avilib_3.dir/video_capture.c.o" \
"CMakeFiles/uvc_avilib_3.dir/video_process.c.o" \
"CMakeFiles/uvc_avilib_3.dir/video_writer.c.o"

# External object files for target uvc_avilib_3
uvc_avilib_3_EXTERNAL_OBJECTS =

uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/avilib.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/color.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/main.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/utils.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/video_capture.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/video_process.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/video_writer.c.o
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/build.make
uvc_avilib_3: CMakeFiles/uvc_avilib_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Volumes/share/capture/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C executable uvc_avilib_3"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uvc_avilib_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uvc_avilib_3.dir/build: uvc_avilib_3

.PHONY : CMakeFiles/uvc_avilib_3.dir/build

CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/avilib.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/color.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/h264encoder.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/main.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/utils.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/video_capture.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/video_process.c.o.requires
CMakeFiles/uvc_avilib_3.dir/requires: CMakeFiles/uvc_avilib_3.dir/video_writer.c.o.requires

.PHONY : CMakeFiles/uvc_avilib_3.dir/requires

CMakeFiles/uvc_avilib_3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uvc_avilib_3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uvc_avilib_3.dir/clean

CMakeFiles/uvc_avilib_3.dir/depend:
	cd /Volumes/share/capture/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Volumes/share/capture /Volumes/share/capture /Volumes/share/capture/cmake-build-debug /Volumes/share/capture/cmake-build-debug /Volumes/share/capture/cmake-build-debug/CMakeFiles/uvc_avilib_3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uvc_avilib_3.dir/depend

