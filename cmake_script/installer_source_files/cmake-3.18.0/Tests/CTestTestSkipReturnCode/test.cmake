cmake_minimum_required(VERSION 2.4)

# Settings:
set(CTEST_DASHBOARD_ROOT                "/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CTestTest")
set(CTEST_SITE                          "a-1262bamqjpwo")
set(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-SkipReturnCode")

set(CTEST_SOURCE_DIRECTORY              "/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CTestTestSkipReturnCode")
set(CTEST_BINARY_DIRECTORY              "/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CTestTestSkipReturnCode")
set(CTEST_CVS_COMMAND                   "CVSCOMMAND-NOTFOUND")
set(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
set(CTEST_CMAKE_GENERATOR_PLATFORM      "")
set(CTEST_CMAKE_GENERATOR_TOOLSET       "")
set(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")
set(CTEST_COVERAGE_COMMAND              "/usr/bin/gcov")
set(CTEST_NOTES_FILES                   "${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}")

#CTEST_EMPTY_BINARY_DIRECTORY(${CTEST_BINARY_DIRECTORY})

CTEST_START(Experimental)
CTEST_CONFIGURE(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_BUILD(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_TEST(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
