#!/usr/bin/env bash
set -euvxo pipefail
pip install playwright chevron
playwright install --with-deps
git clone https://github.com/ivandustin/sdk.git
git clone https://github.com/ivandustin/bible.git
