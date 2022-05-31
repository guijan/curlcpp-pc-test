cmake_minimum_required(VERSION 3.0)
project(curlcpp-pc-test CXX)

find_package(PkgConfig REQUIRED)
pkg_check_modules(CURLCPP REQUIRED IMPORTED_TARGET curlcpp)

add_executable(curlcpp-pc-test curlcpp-pc-test.cpp)
target_link_libraries(curlcpp-pc-test PkgConfig::CURLCPP)
