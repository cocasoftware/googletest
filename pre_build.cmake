# googletest pre_build.cmake — COCA framework integration
# Configures Google Test/Mock upstream CMake options before add_subdirectory().

# Build both gtest and gmock
set(BUILD_GMOCK ON CACHE BOOL "" FORCE)

# Disable install targets — COCA manages artifact layout.
set(INSTALL_GTEST OFF CACHE BOOL "" FORCE)

# No abseil dependency
set(GTEST_HAS_ABSL OFF CACHE BOOL "" FORCE)

# Use shared CRT on Windows (matches COCA default)
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
