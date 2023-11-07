#!/bin/bash

learn_dirs=()

for dir in $(ls -d */ | grep -v "^\.")
do
    learn_dirs+=("${dir%/}")
done

arg="${1:-${learn_dirs[0]}}"

if [[ "${learn_dirs[*]}" =~ $arg ]]; then
    cd "$arg"
    
    cargo build --release
  
    ./target/release/$arg
else
    echo "Could not find directory $arg"
fi

