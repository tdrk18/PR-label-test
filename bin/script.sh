#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
config_file="$script_dir/.request_build_config"

one=$1
two=$2
three=${3:-main}

echo "one:   $one"
echo "two:   $two"
echo "three: $three"
