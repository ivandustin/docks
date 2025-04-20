#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
pg
reason gp < topic.txt | log | native $lang | log
