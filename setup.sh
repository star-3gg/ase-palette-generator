#!/bin/sh
# INFO: run cmake with the specified build directory
cmake -DCMAKE_BUILD_TYPE=DEBUG -S . -B build

# INFO: build the project using the generated makefile
make -C build

# INFO: move to bin folder and run binary
mkdir bin && cp build/PaletteGenerator ./bin && ./bin/PaletteGenerator
