#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
pg
cpg
exegesis < edit.txt | log > exgraw.txt
prose < exgraw.txt | log > exg.txt
catb edit.txt exg.txt > cat.txt
show < cat.txt | log > show.txt
native $lang < show.txt | log > native.txt
fmts < native.txt | log > content.txt
image < show.txt | log > image.txt
curl -s -o image.png "$(cat image.txt)"
fb --media image.png < content.txt
