#!/usr/bin/env bash
set -exuo pipefail

cd "$( dirname "${BASH_SOURCE[0]}" )/.."
source .envrc

go build -ldflags="-s -w" -o bin/supply nodejs/supply/cli
go build -ldflags="-s -w" -o bin/finalize nodejs/finalize/cli
