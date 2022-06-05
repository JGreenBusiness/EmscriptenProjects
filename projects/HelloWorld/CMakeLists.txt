# CMakeList.txt : CMake project for HelloWorld, include source and define
# project specific logic here.
#
cmake_minimum_required (VERSION 3.8)

project("HelloWorld")

# Add source to this project's executable.
add_executable ("${PROJECT_NAME}""src/HelloWorld.cpp" "inc/HelloWorld.h")

include_directories("inc;")

if(EMSCRIPTEN)
	# Tell emscripten to output a html file
	set(CMAKE_EXECUTABLE_SUFFIX ".html")
endif()

set(CMAKE_BINARY_DIR "${CMAKE_HOME_DIRECTORY}/bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}/")
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# TODO: Add tests and install targets if needed.\\
