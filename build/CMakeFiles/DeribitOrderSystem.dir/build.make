# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rugungdaimary/Desktop/Mac/DeribitOrder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rugungdaimary/Desktop/Mac/DeribitOrder/build

# Include any dependencies generated for this target.
include CMakeFiles/DeribitOrderSystem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DeribitOrderSystem.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DeribitOrderSystem.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DeribitOrderSystem.dir/flags.make

CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o: CMakeFiles/DeribitOrderSystem.dir/flags.make
CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o: /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/main.cpp
CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o: CMakeFiles/DeribitOrderSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o -MF CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o.d -o CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o -c /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/main.cpp

CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/main.cpp > CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.i

CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/main.cpp -o CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.s

CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o: CMakeFiles/DeribitOrderSystem.dir/flags.make
CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o: /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/DeribitAPI.cpp
CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o: CMakeFiles/DeribitOrderSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o -MF CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o.d -o CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o -c /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/DeribitAPI.cpp

CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/DeribitAPI.cpp > CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.i

CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/DeribitAPI.cpp -o CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.s

CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o: CMakeFiles/DeribitOrderSystem.dir/flags.make
CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o: /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/OrderManager.cpp
CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o: CMakeFiles/DeribitOrderSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o -MF CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o.d -o CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o -c /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/OrderManager.cpp

CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/OrderManager.cpp > CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.i

CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/OrderManager.cpp -o CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.s

CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o: CMakeFiles/DeribitOrderSystem.dir/flags.make
CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o: /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/WebSocketServer.cpp
CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o: CMakeFiles/DeribitOrderSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o -MF CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o.d -o CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o -c /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/WebSocketServer.cpp

CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/WebSocketServer.cpp > CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.i

CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/WebSocketServer.cpp -o CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.s

CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o: CMakeFiles/DeribitOrderSystem.dir/flags.make
CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o: /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/CurlUtils.cpp
CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o: CMakeFiles/DeribitOrderSystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o -MF CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o.d -o CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o -c /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/CurlUtils.cpp

CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/CurlUtils.cpp > CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.i

CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rugungdaimary/Desktop/Mac/DeribitOrder/src/CurlUtils.cpp -o CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.s

# Object files for target DeribitOrderSystem
DeribitOrderSystem_OBJECTS = \
"CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o" \
"CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o" \
"CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o" \
"CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o" \
"CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o"

# External object files for target DeribitOrderSystem
DeribitOrderSystem_EXTERNAL_OBJECTS =

DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/src/main.cpp.o
DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/src/DeribitAPI.cpp.o
DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/src/OrderManager.cpp.o
DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/src/WebSocketServer.cpp.o
DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/src/CurlUtils.cpp.o
DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/build.make
DeribitOrderSystem: /Library/Developer/CommandLineTools/SDKs/MacOSX13.1.sdk/usr/lib/libcurl.tbd
DeribitOrderSystem: /usr/local/Cellar/openssl@3/3.4.0/lib/libssl.dylib
DeribitOrderSystem: /usr/local/Cellar/openssl@3/3.4.0/lib/libcrypto.dylib
DeribitOrderSystem: CMakeFiles/DeribitOrderSystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable DeribitOrderSystem"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DeribitOrderSystem.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DeribitOrderSystem.dir/build: DeribitOrderSystem
.PHONY : CMakeFiles/DeribitOrderSystem.dir/build

CMakeFiles/DeribitOrderSystem.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DeribitOrderSystem.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DeribitOrderSystem.dir/clean

CMakeFiles/DeribitOrderSystem.dir/depend:
	cd /Users/rugungdaimary/Desktop/Mac/DeribitOrder/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rugungdaimary/Desktop/Mac/DeribitOrder /Users/rugungdaimary/Desktop/Mac/DeribitOrder /Users/rugungdaimary/Desktop/Mac/DeribitOrder/build /Users/rugungdaimary/Desktop/Mac/DeribitOrder/build /Users/rugungdaimary/Desktop/Mac/DeribitOrder/build/CMakeFiles/DeribitOrderSystem.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/DeribitOrderSystem.dir/depend

