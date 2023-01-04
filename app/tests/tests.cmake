find_package(GTest)

enable_testing()

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