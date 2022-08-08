#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE}" )" && pwd )"
config_file="$script_dir/.request_build_config"

build_flavor=$1
build_type=$2
branch=${3:-main}

echo "build_flavor: $build_flavor"
echo "build_type:   $build_type"
echo "branch:       $branch"

curl \
    --header "Content-Type: application/json" \
    --data '{"build_parameters": {"BUILD_FLAVOR": "'$build_flavor'", "BUILD_TYPE": "'$build_type'"}}' \
    --request POST \
    https://circleci.com/api/v1.1/project/github/tdrk18/BitBox/tree/$revision?circle-token=$CIRCLE_TOKEN
