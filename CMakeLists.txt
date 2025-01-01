# Minimum required version of CMake
cmake_minimum_required(VERSION 3.10)

# Project name and version
project(cmake-proj1 VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable
add_executable(cmake-proj1 src/main.cpp)
