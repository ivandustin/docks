#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
pg
cpg
deepseek exegesis < edit.txt | log > exgraw.txt
prose < exgraw.txt | log > exgprose.txt
expandrefs < exgprose.txt | log > exg.txt
catb edit.txt exg.txt > cat.txt
story < cat.txt | log > story.txt
(
	native $lang < story.txt | fmts
	echo
	ref
	echo
	echo —
	echo
	native $lang < exg.txt | fmts
) | log > content.txt
#image < cat.txt | log > image.txt
#curl -s -o image.png "$(cat image.txt)"
sen < cat.txt | log | native $lang | log | txt2img image.png
fb --media image.png < content.txt
