# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\frixo\Algoritmos_ordenacion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\frixo\Algoritmos_ordenacion\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Algoritmos_ordenacion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Algoritmos_ordenacion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Algoritmos_ordenacion.dir/flags.make

CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.obj: CMakeFiles/Algoritmos_ordenacion.dir/flags.make
CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\frixo\Algoritmos_ordenacion\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.obj"
	C:\Mingw64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Algoritmos_ordenacion.dir\main.cpp.obj -c C:\Users\frixo\Algoritmos_ordenacion\main.cpp

CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.i"
	C:\Mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\frixo\Algoritmos_ordenacion\main.cpp > CMakeFiles\Algoritmos_ordenacion.dir\main.cpp.i

CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.s"
	C:\Mingw64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\frixo\Algoritmos_ordenacion\main.cpp -o CMakeFiles\Algoritmos_ordenacion.dir\main.cpp.s

# Object files for target Algoritmos_ordenacion
Algoritmos_ordenacion_OBJECTS = \
"CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.obj"

# External object files for target Algoritmos_ordenacion
Algoritmos_ordenacion_EXTERNAL_OBJECTS =

Algoritmos_ordenacion.exe: CMakeFiles/Algoritmos_ordenacion.dir/main.cpp.obj
Algoritmos_ordenacion.exe: CMakeFiles/Algoritmos_ordenacion.dir/build.make
Algoritmos_ordenacion.exe: CMakeFiles/Algoritmos_ordenacion.dir/linklibs.rsp
Algoritmos_ordenacion.exe: CMakeFiles/Algoritmos_ordenacion.dir/objects1.rsp
Algoritmos_ordenacion.exe: CMakeFiles/Algoritmos_ordenacion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\frixo\Algoritmos_ordenacion\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Algoritmos_ordenacion.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Algoritmos_ordenacion.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Algoritmos_ordenacion.dir/build: Algoritmos_ordenacion.exe

.PHONY : CMakeFiles/Algoritmos_ordenacion.dir/build

CMakeFiles/Algoritmos_ordenacion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Algoritmos_ordenacion.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Algoritmos_ordenacion.dir/clean

CMakeFiles/Algoritmos_ordenacion.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\frixo\Algoritmos_ordenacion C:\Users\frixo\Algoritmos_ordenacion C:\Users\frixo\Algoritmos_ordenacion\cmake-build-debug C:\Users\frixo\Algoritmos_ordenacion\cmake-build-debug C:\Users\frixo\Algoritmos_ordenacion\cmake-build-debug\CMakeFiles\Algoritmos_ordenacion.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Algoritmos_ordenacion.dir/depend
