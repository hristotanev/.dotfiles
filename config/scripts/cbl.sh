#!/bin/bash
set -e

if [[ "$1" == "init" ]]; then
  args=(${@:2})
  project_dir=""
  for ((i = 0; i < ${#args[@]}; i++)); do
    if [[ "${args[i]}" == "--project-dir" ]]; then
      if [[ $((i + 1)) -lt ${#args[@]} ]]; then
        project_dir=${args[$((i + 1))]}
        unset args[i]
        unset args[$((i + 1))]
        break
      else
        echo "Please speficy the project directory."
        exit 1
      fi
    fi
  done

  mkdir "$(pwd)/$project_dir"
  cd "$(pwd)/$project_dir"
  cabal init "${args[@]}"
else
  cabal "$@"
fi
