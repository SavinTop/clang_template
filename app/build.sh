#!/bin/sh
conan profile new default --detect
conan profile update settings.compiler.libcxx=libstdc++11 default
conan install . -if conan_install --build=missing -s build_type=$1
cmake -S . -B build -DCMAKE_BUILD_TYPE=$1
cmake --build build
cd build
ctest test_stdcpp