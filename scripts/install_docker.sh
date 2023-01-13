#!/bin/bash
function install_docker() {
    sudo apt update
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    sudo apt update
    apt-cache policy docker-ce
    sudo apt install -y docker-ce

    if [ -z "$CI" ]
    then
        echo "Not running in CI environment"
        sudo systemctl status docker
        sudo usermod -aG docker ${USER} # run without root
    else 
        echo "Cannot run sudo command in Dockerfile"
    fi
}

install_docker
