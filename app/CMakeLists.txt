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

find_package(GTest)

enable_testing()

add_executable(
  proj_exe
  src/main.cpp
)

add_executable(
  test_stdcpp
  tests/test_stdcpp.cpp
)
target_link_libraries(
  test_stdcpp
  gtest::gtest
)

include(GoogleTest)
gtest_discover_tests(test_stdcpp)