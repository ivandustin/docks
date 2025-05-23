#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
gstoryx >&2
native $lang < story.txt | log > native.txt
fmts < native.txt | log > content.txt
image < story.txt | log > image.txt
curl -s -o image.png "$(cat image.txt)"
fb --media image.png < content.txt
