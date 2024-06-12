cmake_minimum_required(VERSION 3.29)

# Project name and version
project(PaletteGenerator VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Include the nlohmann/json library
add_subdirectory(external/json)

# Add the executable
add_executable(${PROJECT_NAME} src/main.cpp)

# Link the nlohmann/json library to the executable
target_link_libraries(ASEPaletteGenerator PRIVATE nlohmann_json::nlohmann_json)

# Specify include directories
target_include_directories(ASEPaletteGenerator
                           PRIVATE external/json/single_include)
