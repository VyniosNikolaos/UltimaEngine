cmake_minimum_required(VERSION 4.2)
project(UltimaCore)

# Fallback if VULKAN_SDK env var not set
if(NOT DEFINED ENV{VULKAN_SDK})
    set(VULKAN_SDK "C:/VulkanSDK/1.4.341.1")  # adjust version
    set(ENV{VULKAN_SDK} "${VULKAN_SDK}")
endif()

find_package(Vulkan REQUIRED)

add_executable(UltimaCore main.c)

# Equivalent to original: -D_DEBUG -DKEXPORT -D_CRT_SECURE_NO_WARNINGS
target_compile_definitions(UltimaCore PRIVATE
        _DEBUG
        KEXPORT
        _CRT_SECURE_NO_WARNINGS
)

# Equivalent to original: -Isrc -I%VULKAN_SDK%/Include + -lvulkan-1 -luser32
target_include_directories(UltimaCore PRIVATE
        ${CMAKE_SOURCE_DIR}/src
        ${Vulkan_INCLUDE_DIRS}
)

target_link_libraries(UltimaCore PRIVATE
        ${Vulkan_LIBRARIES}
        user32
)