# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = "C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/Common7/IDE/CommonExtensions/Microsoft/CMake/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/Common7/IDE/CommonExtensions/Microsoft/CMake/CMake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:/CMP/Level3/Second/Computer Graphics/New folder"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:/CMP/Level3/Second/Computer Graphics/New folder/build"

# Utility rule file for ContinuousStart.

# Include the progress variables for this target.
include CMakeFiles/ContinuousStart.dir/progress.make

CMakeFiles/ContinuousStart:
	cd "E:/CMP/Level3/Second/Computer Graphics/New folder/build" && "C:/Program Files (x86)/Microsoft Visual Studio/2017/Community/Common7/IDE/CommonExtensions/Microsoft/CMake/CMake/bin/ctest.exe" -D ContinuousStart

ContinuousStart: CMakeFiles/ContinuousStart
ContinuousStart: CMakeFiles/ContinuousStart.dir/build.make

.PHONY : ContinuousStart

# Rule to build all files generated by this target.
CMakeFiles/ContinuousStart.dir/build: ContinuousStart

.PHONY : CMakeFiles/ContinuousStart.dir/build

CMakeFiles/ContinuousStart.dir/clean:
	cd "E:/CMP/Level3/Second/Computer Graphics/New folder/build" && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousStart.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ContinuousStart.dir/clean

CMakeFiles/ContinuousStart.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "E:/CMP/Level3/Second/Computer Graphics/New folder" "E:/CMP/Level3/Second/Computer Graphics/New folder" "E:/CMP/Level3/Second/Computer Graphics/New folder/build" "E:/CMP/Level3/Second/Computer Graphics/New folder/build" "E:/CMP/Level3/Second/Computer Graphics/New folder/build/CMakeFiles/ContinuousStart.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ContinuousStart.dir/depend

