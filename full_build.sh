#!/bin/bash

source ./emsdk/emsdk_env.sh

export ar_check=no
./configure --enable-sdlui --with-sdlsound --without-png --without-uithreads
make
emconfigure ./configure --enable-sdlui --with-sdlsound --without-png --without-uithreads
emmake make
