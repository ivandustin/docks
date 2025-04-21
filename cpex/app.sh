#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
pg
cpg
exg < edit.txt | log > exg.txt
(
	native $lang < edit.txt | fmts
	echo
	ref
	echo
	echo —
	echo
	native $lang < exg.txt | fmts
) | log > post.txt
sen < edit.txt | log | native $lang | log | txt2img title.png
fb --media title.png < post.txt
