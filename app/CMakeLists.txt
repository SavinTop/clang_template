cmake_minimum_required(VERSION 3.14)

project (proj)

set(CMAKE_CXX_STANDARD 11
    CMAKE_CXX_STANDARD_REQUIRED ON
    CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_CLANG_TIDY "clang-tidy;-checks=src/*")

add_compile_options(
  "-Wall" "-Wpedantic" "-Wextra" 
  "$<$<CONFIG:DEBUG>:-O0;-g3;>"
)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/conan_install)

include(tests/tests.cmake)

add_executable(
  proj_exe
  src/main.cpp
)
