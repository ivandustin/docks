#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
pg
cpg
para < edit.txt | log > para.txt
native $lang < para.txt | tee native.txt
