#!/bin/bash

# -a mongos的ip:port
# -r 所有分片的信息
# -d 需要分片的数据库(暂时没用)
# -t 需要分片的collection(暂时没用)
# -k 片键(暂时没用)

ADDRESS=
REPLSET=
DATABASE=
TABLE=
KEY=

while getopts ":qva:r:d:t:k:" OPTION
do
    case "$OPTION" in
    "q")
        echo "quiet"
        ;;
    "v")
        echo "verbose"
        ;;
    "a")
        ADDRESS=$OPTARG
        ;;
    "r")
        REPLSET=$OPTARG
        ;;
    "d")
        DATABASE=$OPTARG
        ;;
    "t")
        TABLE=$OPTARG
        ;;
    "k")
        KEY=$OPTARG
        ;;
    "?")
        echo "Unknown option $OPTARG"
        ;;
    ":")
        echo "No argument value for option $OPTARG"
        ;;
    *)
        # Should not occur
        echo "Unknown error while processing options"
        ;;
    esac
done

dockerize -wait tcp://$ADDRESS

# secondary
replsets=$(echo $REPLSET | tr "|" "\n")

for replset in $replsets
do
  mongo $ADDRESS/admin --eval "db.runCommand({\"addShard\": \"$replset\"});"
done