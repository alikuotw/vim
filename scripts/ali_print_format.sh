#!/bin/bash

# tput setb [1-7] Set background color
# tput setab [1-7] Set ANSI escape code background color
# tput setf [1-7] Set font color
# tput setaf [1-7] Set ANSI escape font color
# tput blod 粗體
# tput smul 底線
# tput rev 反相
# tput sgr0 End all mode.

# alikuotw@print_format

### print_format function ###
# $1 str
# $2 color 0-7
# $3 bgcolor 0-7
# $4 bold 0-1
# $5 underline 0-1

function print_format
{
    str=$1
    color=$2
    bgcolor=$3
    bold=$4
    underline=$5

    reset=$(tput sgr0;)
    setcolor=
    setbgcolor=
    setbold=
    setunderline=

    case "$color" in
        0|1|2|3|4|5|6|7)
            setcolor=$(tput setaf $color;)
            ;;
        *)
            ;;
    esac

    case "$bgcolor" in
        0|1|2|3|4|5|6|7)
            setcolor=$(tput setab $bgcolor;)
            ;;
        *)
            ;;
    esac

    if [ "$bold" == "1" ]; then
        setbold=$(tput bold;)
    fi

    if [ "$underline" == "1" ]; then
        setunderline=$(tput smul;)
    fi

    echo "${setcolor}${setbgcolor}${setbold}${setunderline}${str}${reset}"
}

function printError 
{ 
    print_format "$1" 1 -1 1 
}

function printInfo { 
    print_format "$1" 2 
}

function printText { 
    print_format "$1"
}
