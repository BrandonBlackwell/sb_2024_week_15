if(NOT "/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeTests" MATCHES "^/")
  set(slash /)
endif()
set(url "file://${slash}/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/home/brandon/sb_2024_week_15/cmake_script/installer_source_files/cmake-3.18.0/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )
