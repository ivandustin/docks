#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
pg
cpg
native $lang < edit.txt | log
