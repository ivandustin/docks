#!/usr/bin/env bash
set -euvxo pipefail
root=$(pwd)
export PATH=$root/sdk/bin:$PATH
export MODEL=gpt-4o-mini
export BIBLE=$root/bible
export TEMPER=0
exec httpexec app.sh lang
