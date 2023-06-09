#!/usr/bin/env bash

#Colors:
        Rd='\033[0;31m'    # Red
        Be='\033[0;34m'   # Blue
        Gn='\033[0;32m'  # Green
        We='\033[0;97m'  # White

if [ "$(id -u)" != "0" ]; then
    echo -e "
    $Rd Run with superuser privileges (sudo)! $We
    " >&2
    exit 1
fi

#Docker
if [ -x "$(command -v docker)" ]; then
    echo -e "
    [*]$Be docker is already installed on your machine! $We
    "
else
    apt update
    apt install -y docker docker.io
    usermod -aG docker $(whoami)
    echo -e "
    [*]$Gn docker has been installed on your machine! $We
    "
fi

#Wget
if [ -x "$(command -v wget)" ]; then
    echo -e "
    [*]$Be wget is already installed on your machine! $We
    "
else
    apt install -y wget
    echo -e "
    [*]$Gn wget has been installed on your machine! $We
    "
fi

#Sudocker
if [ -x "$(command -v sudocker)" ]; then
    echo -e "
    [*]$Be sudocker is already installed on your machine! $We
    "
else
    wget -q https://raw.githubusercontent.com/h0ru/sudocker/main/script/sudocker -O /usr/local/bin/sudocker ; chmod +x /usr/local/bin/sudocker
    echo -e "
    [*]$Gn sudocker has been installed on your machine! $We
    "
fi
