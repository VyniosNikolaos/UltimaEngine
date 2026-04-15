cmake_minimum_required(VERSION 4.2)

set(CMAKE_C_STANDARD 23)
set(CMAKE_C_STANDARD_REQUIRED ON)

# Aggressive warning flags for learning
add_compile_options(
        -Wall                    # Standard warnings
        -Wextra                  # Extra warnings
        -Wpedantic               # Strict ISO C compliance
        -Werror                  # Treat warnings as errors
        -Wshadow                 # Variable shadowing
        -Wconversion             # Implicit type conversions
        -Wunused                 # Unused variables/functions
        -Wformat=2               # Printf/scanf format checking
        -Wstrict-prototypes      # Function prototypes
        -Wmissing-prototypes     # Missing prototypes
        -Wold-style-definition   # Old-style function definitions
        -Wmissing-include-dirs   # Missing include directories
        -Wpointer-arith          # Pointer arithmetic issues
        -Wcast-qual              # Cast removing qualifiers
        -Wcast-align             # Cast alignment issues
        -Wwrite-strings          # String literals as const
        -Wlogical-op             # Suspicious logical operations
        -Wduplicated-cond        # Duplicated conditions
        -Wduplicated-branches    # Duplicated branches
        -Wnull-dereference       # Null pointer dereference
        -Wjump-misses-init       # Jump bypassing initialization
        -Wstack-protector        # Stack protection
        -fanalyzer               # Static analyzer (GCC 10+)
)

# Debug build with maximum debug info
add_compile_options(-g3 -ggdb -O0 -fno-omit-frame-pointer -fvar-tracking -fdebug-types-section)

# Enable AddressSanitizer for memory errors
# NOTE: ASan/UBSan not fully supported on Windows MinGW
# Uncomment these for Linux builds:
# add_compile_options(-fsanitize=address,undefined)
# add_link_options(-fsanitize=address,undefined)

# Add your executable
# add_executable(UltimaCore/main.c) unneeded as I am using add_subdirectory
