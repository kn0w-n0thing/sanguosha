cmake_minimum_required (VERSION 2.6)
project (SANGUOSHA)

set (SANGUOSHA_VERSION_MAJOR 0)
set (SANGUOSHA_VERSION_MINOR 0)

add_executable(Sanguosha
			   CardPile.cpp
			   main.cpp)

set (EXECUTABLE_OUT_PUT_PATH
     ${PROJECT_SOURCE_DIR}/../bin)
