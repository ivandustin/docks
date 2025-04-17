#!/usr/bin/env bash
set -euvxo pipefail
root=$(pwd)
export PATH=$root/sdk/bin:$PATH
export BIBLE=$root/bible
export MODEL=o4-mini
exec httpexec app.sh lang
