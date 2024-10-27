cmake_minimum_required(VERSION 3.10)
project(DeribitOrderSystem)

set(CMAKE_CXX_STANDARD 17)

# Add source files
set(SOURCES
    src/main.cpp
    src/DeribitAPI.cpp
    src/OrderManager.cpp
    src/WebSocketServer.cpp
    src/CurlUtils.cpp
)

# Include directories
include_directories(include)
include_directories(${CURL_INCLUDE_DIR})
include_directories(${OPENSSL_INCLUDE_DIR})

# Find nlohmann_json library
find_package(nlohmann_json REQUIRED)
find_package(CURL REQUIRED)
find_package(OpenSSL REQUIRED)

# Add the executable
add_executable(DeribitOrderSystem ${SOURCES})

# Link libraries
target_link_libraries(DeribitOrderSystem
    nlohmann_json::nlohmann_json
    CURL::libcurl
    OpenSSL::SSL
    OpenSSL::Crypto
)
