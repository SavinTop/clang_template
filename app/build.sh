#!/bin/sh

conan install . --profile clang.conan -if conan_install -b missing -s build_type=$1
cmake -S . -B build -DCMAKE_BUILD_TYPE=$1
cmake --build build
cd build
ctest test_stdcpp