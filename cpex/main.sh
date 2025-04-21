#!/usr/bin/env bash
set -euvxo pipefail
root=$(pwd)
export PATH=$root/sdk/bin:$PATH
export BIBLE=$root/bible
export PW=$root/pw.json
export MODEL=o4-mini
export EFFORT=high
exec httpexec app.sh lang prof pub
