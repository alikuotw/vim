#!/bin/bash

red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
white="\033[1;37m"
reset="\033[0m"
tab="\t\t"

print_info() {
    echo "${yellow}$1${reset}: $tab ${white}$2${reset}"
}

print_text() {
    echo "$white$1$reset"
}

print_error() {
    echo "$red$1$reset"
}

print_tips() {
    echo "$green$1$reset"
}
