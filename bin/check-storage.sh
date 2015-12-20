#!/bin/bash
# while getopts mes: OPTION
# do
#   case $OPTION in
#     m ) OPTION_m="TRUE" ;;
#     #e ) OPTION_e="TRUE" ;;
#     #s ) OPTION_s="TRUE" ; VALUE_s="$OPTARG" ;;
#     * ) echo "Option Error" 1>&2
#     #* ) echo "Usage: $COMMAND [-m | -e] [-s suffix] name ..." 1>&2
#         exit 1 ;;
#   esac
# done

#DIRECTORY=$1

# TODO: args directory point
# TODO: args threshold size
# TODO: show help
sudo du -g -x -d 5 / | awk '$1 >= 5{print}'
