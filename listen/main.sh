#!/usr/bin/env bash
set -euvxo pipefail
export PATH=$PWD/pod/bin:$PWD/sdk/bin:$PATH
export AWS_DEFAULT_REGION=auto
export BIBLE=$PWD/bible
export MODEL=o4-mini
export TTS=tts-1-hd
export EFFORT=high
export VOICE=onyx
waithttp 60 key | xargsn ./app.sh
