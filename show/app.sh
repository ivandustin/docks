#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
pg
cpg
reason show < edit.txt | log > show.txt
native $lang < show.txt | log > native.txt
sens < native.txt | log > sens.txt
addn < sens.txt | log > content.txt
image < show.txt | log > image.txt
curl -s -o image.png "$(cat image.txt)"
fb --media image.png < content.txt
