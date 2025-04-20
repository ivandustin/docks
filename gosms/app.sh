#!/usr/bin/env bash
set -euvxo pipefail
lang=$1
sandbox gosmsx | log | native $lang | log
