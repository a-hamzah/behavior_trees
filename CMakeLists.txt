cmake_minimum_required(VERSION 3.5)

project(my_bt)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(behaviortree_cpp)

add_executable(${PROJECT_NAME} "my_bt.cpp")
target_link_libraries(${PROJECT_NAME} BT::behaviortree_cpp)