# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/stanislavvitvitskiy/CLionProjects/Knight

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Knight.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Knight.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Knight.dir/flags.make

CMakeFiles/Knight.dir/main.cpp.o: CMakeFiles/Knight.dir/flags.make
CMakeFiles/Knight.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Knight.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Knight.dir/main.cpp.o -c /Users/stanislavvitvitskiy/CLionProjects/Knight/main.cpp

CMakeFiles/Knight.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Knight.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/stanislavvitvitskiy/CLionProjects/Knight/main.cpp > CMakeFiles/Knight.dir/main.cpp.i

CMakeFiles/Knight.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Knight.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/stanislavvitvitskiy/CLionProjects/Knight/main.cpp -o CMakeFiles/Knight.dir/main.cpp.s

# Object files for target Knight
Knight_OBJECTS = \
"CMakeFiles/Knight.dir/main.cpp.o"

# External object files for target Knight
Knight_EXTERNAL_OBJECTS =

Knight: CMakeFiles/Knight.dir/main.cpp.o
Knight: CMakeFiles/Knight.dir/build.make
Knight: CMakeFiles/Knight.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Knight"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Knight.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Knight.dir/build: Knight

.PHONY : CMakeFiles/Knight.dir/build

CMakeFiles/Knight.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Knight.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Knight.dir/clean

CMakeFiles/Knight.dir/depend:
	cd /Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stanislavvitvitskiy/CLionProjects/Knight /Users/stanislavvitvitskiy/CLionProjects/Knight /Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug /Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug /Users/stanislavvitvitskiy/CLionProjects/Knight/cmake-build-debug/CMakeFiles/Knight.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Knight.dir/depend

