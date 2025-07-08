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

# ==============
# Deploy Compose
# ==============
main() {
    deploy_cmd="docker compose -f $project_dirpath/docker-compose.yaml up -d"
    echo "${GREEN}--LOG: DEPLOY IMAGE COMMAND: $ansible_cmd ${NORMAL}"
    printf "\n------------------------------------------------------------------------------------\n"
    eval "$deploy_cmd"
}
main
