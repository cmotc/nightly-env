# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu

# Utility rule file for generated_sources.

# Include the progress variables for this target.
include CMakeFiles/generated_sources.dir/progress.make

CMakeFiles/generated_sources: common/atoms-intern.h
CMakeFiles/generated_sources: common/atoms-extern.h

common/atoms-intern.h: ../common/atoms.list
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating atoms-intern.h"
	cd /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6 && /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/build-utils/atoms-int.sh /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/common/atoms.list > /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/common/atoms-intern.h

common/atoms-extern.h: ../common/atoms.list
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating atoms-extern.h"
	cd /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6 && /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/build-utils/atoms-ext.sh /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/common/atoms.list > /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/common/atoms-extern.h

generated_sources: CMakeFiles/generated_sources
generated_sources: common/atoms-intern.h
generated_sources: common/atoms-extern.h
generated_sources: CMakeFiles/generated_sources.dir/build.make
.PHONY : generated_sources

# Rule to build all files generated by this target.
CMakeFiles/generated_sources.dir/build: generated_sources
.PHONY : CMakeFiles/generated_sources.dir/build

CMakeFiles/generated_sources.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/generated_sources.dir/cmake_clean.cmake
.PHONY : CMakeFiles/generated_sources.dir/clean

CMakeFiles/generated_sources.dir/depend:
	cd /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6 /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6 /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles/generated_sources.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/generated_sources.dir/depend

