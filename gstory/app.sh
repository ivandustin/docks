#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
export FBPROF=$2
export FBPUB=$3
gstoryx | log | native $lang | log > content.txt
sen < content.txt | log | native $lang | log | txt2img title.png
fb --media title.png < content.txt
