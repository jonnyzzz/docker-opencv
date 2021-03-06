FROM ubuntu
MAINTAINER Eugene Petrenko <eugene.petrenko@gmail.com>

#Update packages
RUN apt-get update

# Installing base requirements from openCV build
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN apt-get install -y libc6
RUN apt-get install -y libc6-dev
RUN apt-get install -y build-essential
RUN apt-get install -y cmake
RUN apt-get install -y git
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y pkg-config
RUN apt-get install -y libavcodec-dev
RUN apt-get install -y libavformat-dev
RUN apt-get install -y libswscale-dev
RUN apt-get install -y python-dev 
RUN apt-get install -y python-numpy
RUN apt-get install -y libtbb2
RUN apt-get install -y libtbb-dev
RUN apt-get install -y libjpeg-dev
RUN apt-get install -y libpng-dev
RUN apt-get install -y libtiff-dev
RUN apt-get install -y libjasper-dev
RUN apt-get install -y libdc1394-22-dev


# tools to checkout and prepare OpenCV package
RUN apt-get install -y git-core

# LLVM
RUN apt-get install -y clang
RUN apt-get install -y llvm


# OpenCV sources
RUN mkdir -p /opencv/src
RUN git clone --depth=1 --branch 2.4.9 https://github.com/Itseez/opencv.git /opencv/src


# emscripten
RUN apt-get install -y emscripten

# cmake init for OpenCV
RUN mkdir -p /opencv/build
WORKDIR /opencv/build
RUN cmake /opencv/src





