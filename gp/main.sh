#!/usr/bin/env bash
set -euvxo pipefail
root=$(pwd)
export PATH=$root/sdk/bin:$PATH
export BIBLE=$root/bible
export REASON=o3-mini
export MODEL=gpt-4o
export TEMP=0
exec httpexec app.sh lang
