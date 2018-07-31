#!/bin/bash
# 特定ディレクトリ配下で、一定以上大きい容量のディレクトリ一覧を出力する

# usage
cmdname=`basename $0`
function usage() {
  echo "Usage: ${cmdname} [-t threshold size(GB)] directory" 1>&2
}

THRESHOLD_SIZE=5

while getopts t:h OPT
do
  case $OPT in
    t) THRESHOLD_SIZE=$OPTARG ;;
    h) usage
        exit 1 ;;
    *) usage
        exit 1 ;;
    # :) echo  "[ERROR] Option argument is undefined.";;   #
    # \?) echo "[ERROR] Undefined options.";;
    # :|\?) _usage;;      #(*3)
  esac
done
shift $((OPTIND - 1))

# check arguments
if [ $# -eq 0 ]; then
  usage
  exit 1
fi

DIRECTORY=$1
DIRECTORY=${DIRECTORY:-.}

# -d はdepth
# sudo du -g -x -d 5 $DIRECTORY | awk -v t=$THRESHOLD_SIZE '$1 >= $t{print}'
sudo du -g -x -d 5 $DIRECTORY | awk '$1 >= 5{print}'
