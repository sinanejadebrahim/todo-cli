#!/bin/bash

date=$(/usr/bin/date +"%Y-%m-%d")
file_dir="/var/log/todo/"
file="$file_dir$date.tasks"

GREEN="\e[32m"
GRAY="\e[30m"
ENDCOLOR="\e[0m"
BLUE="\e[36m"

help_message() {
        echo -e "${GRAY} add | add new task         ${ENDCOLOR} todo add test cicd setup"
        echo -e "${GRAY} ls  | list all tasks       ${ENDCOLOR} todo ls"
        echo -e "${GRAY} do  | mark task as done    ${ENDCOLOR} todo do 1"
        echo -e "${GRAY} rm  | mark task as removed ${ENDCOLOR} todo rm 1"
        echo -e "${GRAY} check out this url         ${ENDCOLOR} https://asciinema.org/a/657609"
}

if [[ $1 == "-h" || $1 == "h" || $1 == "help" || -z $1 ]]; then
        help_message

elif [[ $1 == "add" ]]; then
        if [[ -f "$file" ]]; then

                counter=$(wc -l $file | awk '{print $1}')

        else
                counter=0

        fi

        echo >>$file "$(($counter + 1)). ${@:2}"

elif [[ $1 == "rm" ]]; then
        task_number=$2
        sed "s/${task_number}.*/& ❌/" -i $file

elif [[ $1 == "do" ]]; then
        task_number=$2
        sed "s/${task_number}.*/& ✅/" -i $file

elif [[ $1 == "ls" ]]; then
        if [[ -f "$file" ]]; then

                echo -e "${BLUE}$date tasks${ENDCOLOR}"
                while IFS= read -r line; do
                        if [[ "$line" == *"✅"* ]]; then
                                echo -e "${GREEN}$line${ENDCOLOR}"

                        elif [[ "$line" == *"❌"* ]]; then
                                echo -e "${GRAY}$line${ENDCOLOR}"

                        else
                                echo "$line"

                        fi
                done <"$file"

        else
                echo "You Don't have any tasks yet !"

        fi

fi
