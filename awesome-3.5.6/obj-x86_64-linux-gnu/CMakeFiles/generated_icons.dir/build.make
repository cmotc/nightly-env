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

# Utility rule file for generated_icons.

# Include the progress variables for this target.
include CMakeFiles/generated_icons.dir/progress.make

CMakeFiles/generated_icons: ../themes/zenburn/titlebar/close_focus.png
CMakeFiles/generated_icons: ../themes/zenburn/titlebar/maximized_focus_active.png
CMakeFiles/generated_icons: ../themes/zenburn/titlebar/floating_focus_active.png
CMakeFiles/generated_icons: ../themes/zenburn/titlebar/ontop_focus_active.png
CMakeFiles/generated_icons: ../themes/zenburn/titlebar/sticky_focus_active.png
CMakeFiles/generated_icons: ../themes/default/titlebar/close_focus.png
CMakeFiles/generated_icons: ../themes/default/titlebar/maximized_focus_active.png
CMakeFiles/generated_icons: ../themes/default/titlebar/floating_focus_active.png
CMakeFiles/generated_icons: ../themes/default/titlebar/ontop_focus_active.png
CMakeFiles/generated_icons: ../themes/default/titlebar/sticky_focus_active.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/close_normal.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/maximized_normal_active.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/floating_normal_active.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/ontop_normal_active.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/sticky_normal_active.png
CMakeFiles/generated_icons: themes/default/titlebar/close_normal.png
CMakeFiles/generated_icons: themes/default/titlebar/maximized_normal_active.png
CMakeFiles/generated_icons: themes/default/titlebar/floating_normal_active.png
CMakeFiles/generated_icons: themes/default/titlebar/ontop_normal_active.png
CMakeFiles/generated_icons: themes/default/titlebar/sticky_normal_active.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/maximized_focus_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/floating_focus_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/ontop_focus_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/sticky_focus_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/maximized_focus_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/floating_focus_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/ontop_focus_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/sticky_focus_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/maximized_normal_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/floating_normal_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/ontop_normal_inactive.png
CMakeFiles/generated_icons: themes/zenburn/titlebar/sticky_normal_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/maximized_normal_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/floating_normal_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/ontop_normal_inactive.png
CMakeFiles/generated_icons: themes/default/titlebar/sticky_normal_inactive.png

themes/zenburn/titlebar/close_normal.png: ../themes/zenburn/titlebar/close_focus.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/close_normal.png"
	/usr/bin/convert themes/zenburn/titlebar/close_focus.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/zenburn/titlebar/close_normal.png

themes/zenburn/titlebar/maximized_normal_active.png: ../themes/zenburn/titlebar/maximized_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/maximized_normal_active.png"
	/usr/bin/convert themes/zenburn/titlebar/maximized_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/zenburn/titlebar/maximized_normal_active.png

themes/zenburn/titlebar/floating_normal_active.png: ../themes/zenburn/titlebar/floating_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/floating_normal_active.png"
	/usr/bin/convert themes/zenburn/titlebar/floating_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/zenburn/titlebar/floating_normal_active.png

themes/zenburn/titlebar/ontop_normal_active.png: ../themes/zenburn/titlebar/ontop_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/ontop_normal_active.png"
	/usr/bin/convert themes/zenburn/titlebar/ontop_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/zenburn/titlebar/ontop_normal_active.png

themes/zenburn/titlebar/sticky_normal_active.png: ../themes/zenburn/titlebar/sticky_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/sticky_normal_active.png"
	/usr/bin/convert themes/zenburn/titlebar/sticky_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/zenburn/titlebar/sticky_normal_active.png

themes/default/titlebar/close_normal.png: ../themes/default/titlebar/close_focus.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/close_normal.png"
	/usr/bin/convert themes/default/titlebar/close_focus.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/default/titlebar/close_normal.png

themes/default/titlebar/maximized_normal_active.png: ../themes/default/titlebar/maximized_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/maximized_normal_active.png"
	/usr/bin/convert themes/default/titlebar/maximized_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/default/titlebar/maximized_normal_active.png

themes/default/titlebar/floating_normal_active.png: ../themes/default/titlebar/floating_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/floating_normal_active.png"
	/usr/bin/convert themes/default/titlebar/floating_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/default/titlebar/floating_normal_active.png

themes/default/titlebar/ontop_normal_active.png: ../themes/default/titlebar/ontop_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/ontop_normal_active.png"
	/usr/bin/convert themes/default/titlebar/ontop_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/default/titlebar/ontop_normal_active.png

themes/default/titlebar/sticky_normal_active.png: ../themes/default/titlebar/sticky_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/sticky_normal_active.png"
	/usr/bin/convert themes/default/titlebar/sticky_focus_active.png -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4 themes/default/titlebar/sticky_normal_active.png

themes/zenburn/titlebar/maximized_focus_inactive.png: ../themes/zenburn/titlebar/maximized_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/maximized_focus_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/maximized_focus_active.png -colorspace Gray themes/zenburn/titlebar/maximized_focus_inactive.png

themes/zenburn/titlebar/floating_focus_inactive.png: ../themes/zenburn/titlebar/floating_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/floating_focus_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/floating_focus_active.png -colorspace Gray themes/zenburn/titlebar/floating_focus_inactive.png

themes/zenburn/titlebar/ontop_focus_inactive.png: ../themes/zenburn/titlebar/ontop_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/ontop_focus_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/ontop_focus_active.png -colorspace Gray themes/zenburn/titlebar/ontop_focus_inactive.png

themes/zenburn/titlebar/sticky_focus_inactive.png: ../themes/zenburn/titlebar/sticky_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_14)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/sticky_focus_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/sticky_focus_active.png -colorspace Gray themes/zenburn/titlebar/sticky_focus_inactive.png

themes/default/titlebar/maximized_focus_inactive.png: ../themes/default/titlebar/maximized_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_15)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/maximized_focus_inactive.png"
	/usr/bin/convert themes/default/titlebar/maximized_focus_active.png -colorspace Gray themes/default/titlebar/maximized_focus_inactive.png

themes/default/titlebar/floating_focus_inactive.png: ../themes/default/titlebar/floating_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_16)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/floating_focus_inactive.png"
	/usr/bin/convert themes/default/titlebar/floating_focus_active.png -colorspace Gray themes/default/titlebar/floating_focus_inactive.png

themes/default/titlebar/ontop_focus_inactive.png: ../themes/default/titlebar/ontop_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_17)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/ontop_focus_inactive.png"
	/usr/bin/convert themes/default/titlebar/ontop_focus_active.png -colorspace Gray themes/default/titlebar/ontop_focus_inactive.png

themes/default/titlebar/sticky_focus_inactive.png: ../themes/default/titlebar/sticky_focus_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_18)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/sticky_focus_inactive.png"
	/usr/bin/convert themes/default/titlebar/sticky_focus_active.png -colorspace Gray themes/default/titlebar/sticky_focus_inactive.png

themes/zenburn/titlebar/maximized_normal_inactive.png: themes/zenburn/titlebar/maximized_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_19)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/maximized_normal_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/maximized_normal_active.png -colorspace Gray themes/zenburn/titlebar/maximized_normal_inactive.png

themes/zenburn/titlebar/floating_normal_inactive.png: themes/zenburn/titlebar/floating_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_20)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/floating_normal_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/floating_normal_active.png -colorspace Gray themes/zenburn/titlebar/floating_normal_inactive.png

themes/zenburn/titlebar/ontop_normal_inactive.png: themes/zenburn/titlebar/ontop_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_21)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/ontop_normal_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/ontop_normal_active.png -colorspace Gray themes/zenburn/titlebar/ontop_normal_inactive.png

themes/zenburn/titlebar/sticky_normal_inactive.png: themes/zenburn/titlebar/sticky_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_22)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/zenburn/titlebar/sticky_normal_inactive.png"
	/usr/bin/convert themes/zenburn/titlebar/sticky_normal_active.png -colorspace Gray themes/zenburn/titlebar/sticky_normal_inactive.png

themes/default/titlebar/maximized_normal_inactive.png: themes/default/titlebar/maximized_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_23)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/maximized_normal_inactive.png"
	/usr/bin/convert themes/default/titlebar/maximized_normal_active.png -colorspace Gray themes/default/titlebar/maximized_normal_inactive.png

themes/default/titlebar/floating_normal_inactive.png: themes/default/titlebar/floating_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_24)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/floating_normal_inactive.png"
	/usr/bin/convert themes/default/titlebar/floating_normal_active.png -colorspace Gray themes/default/titlebar/floating_normal_inactive.png

themes/default/titlebar/ontop_normal_inactive.png: themes/default/titlebar/ontop_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_25)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/ontop_normal_inactive.png"
	/usr/bin/convert themes/default/titlebar/ontop_normal_active.png -colorspace Gray themes/default/titlebar/ontop_normal_inactive.png

themes/default/titlebar/sticky_normal_inactive.png: themes/default/titlebar/sticky_normal_active.png
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles $(CMAKE_PROGRESS_26)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating themes/default/titlebar/sticky_normal_inactive.png"
	/usr/bin/convert themes/default/titlebar/sticky_normal_active.png -colorspace Gray themes/default/titlebar/sticky_normal_inactive.png

generated_icons: CMakeFiles/generated_icons
generated_icons: themes/zenburn/titlebar/close_normal.png
generated_icons: themes/zenburn/titlebar/maximized_normal_active.png
generated_icons: themes/zenburn/titlebar/floating_normal_active.png
generated_icons: themes/zenburn/titlebar/ontop_normal_active.png
generated_icons: themes/zenburn/titlebar/sticky_normal_active.png
generated_icons: themes/default/titlebar/close_normal.png
generated_icons: themes/default/titlebar/maximized_normal_active.png
generated_icons: themes/default/titlebar/floating_normal_active.png
generated_icons: themes/default/titlebar/ontop_normal_active.png
generated_icons: themes/default/titlebar/sticky_normal_active.png
generated_icons: themes/zenburn/titlebar/maximized_focus_inactive.png
generated_icons: themes/zenburn/titlebar/floating_focus_inactive.png
generated_icons: themes/zenburn/titlebar/ontop_focus_inactive.png
generated_icons: themes/zenburn/titlebar/sticky_focus_inactive.png
generated_icons: themes/default/titlebar/maximized_focus_inactive.png
generated_icons: themes/default/titlebar/floating_focus_inactive.png
generated_icons: themes/default/titlebar/ontop_focus_inactive.png
generated_icons: themes/default/titlebar/sticky_focus_inactive.png
generated_icons: themes/zenburn/titlebar/maximized_normal_inactive.png
generated_icons: themes/zenburn/titlebar/floating_normal_inactive.png
generated_icons: themes/zenburn/titlebar/ontop_normal_inactive.png
generated_icons: themes/zenburn/titlebar/sticky_normal_inactive.png
generated_icons: themes/default/titlebar/maximized_normal_inactive.png
generated_icons: themes/default/titlebar/floating_normal_inactive.png
generated_icons: themes/default/titlebar/ontop_normal_inactive.png
generated_icons: themes/default/titlebar/sticky_normal_inactive.png
generated_icons: CMakeFiles/generated_icons.dir/build.make
.PHONY : generated_icons

# Rule to build all files generated by this target.
CMakeFiles/generated_icons.dir/build: generated_icons
.PHONY : CMakeFiles/generated_icons.dir/build

CMakeFiles/generated_icons.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/generated_icons.dir/cmake_clean.cmake
.PHONY : CMakeFiles/generated_icons.dir/clean

CMakeFiles/generated_icons.dir/depend:
	cd /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6 /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6 /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu /home/dyngar/Projects/Distro_OS_projects/packages/awesome-3.5.6/obj-x86_64-linux-gnu/CMakeFiles/generated_icons.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/generated_icons.dir/depend

