#!/bin/bash

printf "\n------------------------------------------------------------------------------------\n"
# Define color codes
RED=$(tput bold setaf 160)
GREEN=$(tput bold setaf 34)
BLUE=$(tput bold setaf 33)
NORMAL=$(tput sgr0)

# Default Variables
abs_filepath=$(readlink -f "$0")
abs_dirpath=$(dirname "$abs_filepath")
project_dirpath=$(dirname "$abs_dirpath")
echo "${GREEN}--LOG: Stack Working Dir: $project_dirpath ${NORMAL}"

# ==========
# Pull Image
# ==========
main() {
    pull_image_cmd="docker compose -f $project_dirpath/docker-compose.yaml pull"
    echo "${GREEN}--LOG: PULL IMAGE COMMAND: $ansible_cmd ${NORMAL}"
    printf "\n------------------------------------------------------------------------------------\n"
    eval "$pull_image_cmd"
}
main
