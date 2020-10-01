#!/bin/bash

CURRENT_DIR=`pwd`
BUILD_DIR=${CURRENT_DIR}/build
SRC_DIR=${CURRENT_DIR}/src
CMAKE_COMMAND=cmake
MAKE_COMMAND=make

mkdir ${BUILD_DIR}
mkdir -p ${CURRENT_DIR}/external/gtest
cd ${BUILD_DIR}
${CMAKE_COMMAND} ${SRC_DIR}
${MAKE_COMMAND}


