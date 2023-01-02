#include<string>
#include<gtest/gtest.h>

TEST(STD, STRING) {
  // Expect two strings to be equal.
  EXPECT_STREQ(std::string("Basic _ char String").c_str(), "Basic _ char String");
}