# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/irl/behavior_tree_example/my_bt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/irl/behavior_tree_example/my_bt/build

# Include any dependencies generated for this target.
include CMakeFiles/my_bt.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/my_bt.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_bt.dir/flags.make

CMakeFiles/my_bt.dir/my_bt.cpp.o: CMakeFiles/my_bt.dir/flags.make
CMakeFiles/my_bt.dir/my_bt.cpp.o: ../my_bt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irl/behavior_tree_example/my_bt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_bt.dir/my_bt.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/my_bt.dir/my_bt.cpp.o -c /home/irl/behavior_tree_example/my_bt/my_bt.cpp

CMakeFiles/my_bt.dir/my_bt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_bt.dir/my_bt.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irl/behavior_tree_example/my_bt/my_bt.cpp > CMakeFiles/my_bt.dir/my_bt.cpp.i

CMakeFiles/my_bt.dir/my_bt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_bt.dir/my_bt.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irl/behavior_tree_example/my_bt/my_bt.cpp -o CMakeFiles/my_bt.dir/my_bt.cpp.s

# Object files for target my_bt
my_bt_OBJECTS = \
"CMakeFiles/my_bt.dir/my_bt.cpp.o"

# External object files for target my_bt
my_bt_EXTERNAL_OBJECTS =

my_bt: CMakeFiles/my_bt.dir/my_bt.cpp.o
my_bt: CMakeFiles/my_bt.dir/build.make
my_bt: /usr/local/lib/libbehaviortree_cpp.so
my_bt: CMakeFiles/my_bt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/irl/behavior_tree_example/my_bt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my_bt"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_bt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_bt.dir/build: my_bt

.PHONY : CMakeFiles/my_bt.dir/build

CMakeFiles/my_bt.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_bt.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_bt.dir/clean

CMakeFiles/my_bt.dir/depend:
	cd /home/irl/behavior_tree_example/my_bt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/irl/behavior_tree_example/my_bt /home/irl/behavior_tree_example/my_bt /home/irl/behavior_tree_example/my_bt/build /home/irl/behavior_tree_example/my_bt/build /home/irl/behavior_tree_example/my_bt/build/CMakeFiles/my_bt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_bt.dir/depend

