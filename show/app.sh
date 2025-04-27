#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
pg
cpg
deepseek exegesis < edit.txt | log > exgraw.txt
prose < exgraw.txt | log > exg.txt
catb edit.txt exg.txt > cat.txt
show < cat.txt | log > show.txt
(
	native $lang < show.txt | fmts
	echo
	echo —
	echo
	native $lang < exg.txt | fmts
) | log > content.txt
image < cat.txt | log > image.txt
curl -s -o image.png "$(cat image.txt)"
fb --media image.png < content.txt
