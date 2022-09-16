#!/bin/bash

sub_init() {
  read -p 'Django Project Name: ' djangoProjectName
  #echo "Project Name: $djangoProjectName"
  pipenv install
  pipenv install django
  pipenv run django-admin startproject $djangoProjectName .
}

# Main
# https://gist.github.com/waylan/4080362
ProgName=$(basename $0)

sub_help(){
    echo "Usage: $ProgName <subcommand> [options]\n"
    echo "Subcommands:"
    echo "    init   Init django project"
    echo "    baz   Run baz"
    echo ""
    echo "For help with each subcommand run:"
    echo "$ProgName <subcommand> -h|--help"
    echo ""
}

subcommand=$1
case $subcommand in
    "" | "-h" | "--help")
        sub_help
        ;;
    *)
        shift
        sub_${subcommand} $@
        if [ $? = 127 ]; then
            echo "Error: '$subcommand' is not a known subcommand." >&2
            echo "       Run '$ProgName --help' for a list of known subcommands." >&2
            exit 1
        fi
        ;;
esac
