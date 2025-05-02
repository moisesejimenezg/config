#!/bin/bash

function format_cpp_files() {
  if [[ $# -eq 0 ]]; then
    echo "Usage: format_cpp_files <directory1> [directory2 ...]"
    return 1
  fi

  for dir in "$@"; do
    if [[ ! -d "$dir" ]]; then
      echo "Error: '$dir' is not a valid directory."
      continue
    fi
    format_cpp_directory $dir
  done
}

function format_cpp_directory() {
  local dir=$1

  if [[ ! -d "$dir" ]]; then
    echo "Error: '$dir' is not a valid directory. Skipping."
    return 0
  fi

  # Find all C++ files and run clang-format on them
  find "$dir" -type f \( -name "*.cpp" -o -name "*.hpp" -o -name "*.h" -o -name "*.cc" -o -name "*.cxx" \) -exec clang-format -i {} +

  echo "Clang-format applied to all C++ files in '$dir'."
}
