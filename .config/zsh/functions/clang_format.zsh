#!/bin/bash

function format_cpp_files() {
  local dir=$1

  if [[ -z "$dir" ]]; then
    echo "Usage: format_cpp_files <directory>"
    return 1
  fi

  if [[ ! -d "$dir" ]]; then
    echo "Error: '$dir' is not a valid directory."
    return 1
  fi

  # Find all C++ files and run clang-format on them
  find "$dir" -type f \( -name "*.cpp" -o -name "*.hpp" -o -name "*.h" -o -name "*.cc" -o -name "*.cxx" \) -exec clang-format -i {} +

  echo "Clang-format applied to all C++ files in '$dir'."
}
