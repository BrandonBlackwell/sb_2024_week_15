# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Bootstrap.cmk/cmake

# The command to remove a file.
RM = /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Bootstrap.cmk/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0

# Include any dependencies generated for this target.
include Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/depend.make

# Include the progress variables for this target.
include Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/progress.make

# Include the compile flags for this target's objects.
include Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/flags.make

Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/ret0.c.o: Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/flags.make
Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/ret0.c.o: Tests/CMakeLib/PseudoMemcheck/NoLog/ret0.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/ret0.c.o"
	cd /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pseudonl_valgrind.dir/ret0.c.o -c /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog/ret0.c

Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/ret0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pseudonl_valgrind.dir/ret0.c.i"
	cd /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog/ret0.c > CMakeFiles/pseudonl_valgrind.dir/ret0.c.i

Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/ret0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pseudonl_valgrind.dir/ret0.c.s"
	cd /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog/ret0.c -o CMakeFiles/pseudonl_valgrind.dir/ret0.c.s

# Object files for target pseudonl_valgrind
pseudonl_valgrind_OBJECTS = \
"CMakeFiles/pseudonl_valgrind.dir/ret0.c.o"

# External object files for target pseudonl_valgrind
pseudonl_valgrind_EXTERNAL_OBJECTS =

Tests/CMakeLib/PseudoMemcheck/NoLog/valgrind: Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/ret0.c.o
Tests/CMakeLib/PseudoMemcheck/NoLog/valgrind: Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/build.make
Tests/CMakeLib/PseudoMemcheck/NoLog/valgrind: Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable valgrind"
	cd /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pseudonl_valgrind.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/build: Tests/CMakeLib/PseudoMemcheck/NoLog/valgrind

.PHONY : Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/build

Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/clean:
	cd /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog && $(CMAKE_COMMAND) -P CMakeFiles/pseudonl_valgrind.dir/cmake_clean.cmake
.PHONY : Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/clean

Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/depend:
	cd /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0 /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0 /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog /home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Tests/CMakeLib/PseudoMemcheck/NoLog/CMakeFiles/pseudonl_valgrind.dir/depend

