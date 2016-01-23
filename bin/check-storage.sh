#!/bin/bash
# 特定ディレクトリ配下で、一定以上大きい容量のディレクトリ一覧を出力する

# usage
cmdname=`basename $0`
function usage() {
  echo "Usage: ${cmdname} [-t threshold size(GB)] directory" 1>&2
}

THRESHOLD_SIZE=5

while getopts t: OPT
do
  case $OPT in
    t ) THRESHOLD_SIZE=$OPTARG ;;
    * ) usage
        exit 1 ;;
  esac
done
shift $((OPTIND - 1))

# check arguments
if [ $# -gt 1 ]; then
  usage
  exit 1
fi

DIRECTORY=$1
DIRECTORY=${DIRECTORY:-.}

sudo du -g -x -d $THRESHOLD_SIZE $DIRECTORY | awk '$1 >= 5{print}'
