cmake_minimum_required (VERSION 3.10)
project (SANGUOSHA)

set (SANGUOSHA_VERSION_MAJOR 0)
set (SANGUOSHA_VERSION_MINOR 0)

add_executable(Sanguosha
               CardPile.cpp
               main.cpp)

set (EXECUTABLE_OUT_PUT_PATH
     ${PROJECT_SOURCE_DIR}/../bin)

# Download and unpack gtest at configure time
configure_file(CMakeLists.txt.gtest 
               ${CMAKE_BINARY_DIR}/googletest-download/CMakeLists.txt)
execute_process(COMMAND "${CMAKE_COMMAND}" -G ${CMAKE_GENERATOR} .
                WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/googletest-download")
execute_process(COMMAND "${CMAKE_COMMAND}" --build .
                WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/googletest-download")
add_subdirectory("${CMAKE_BINARY_DIR}/googletest-download"
                 "${CMAKE_BINARY_DIR}/googletest-build")

# Tests
include(GoogleTest)
add_executable(CardPileTest
               tests/CardPileTest.cpp)
gtest_add_tests(TARGET      CardPileTest
                TEST_SUFFIX .noArgs
                TEST_LIST   noArgsTests)
