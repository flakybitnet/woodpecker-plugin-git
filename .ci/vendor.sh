#!/bin/sh
set -eu

set -a
. .ci/lib.sh
set +a

echo Vendoring $APP_NAME

export GOPATH='/woodpecker/go'
export CGO_ENABLED=0

go mod vendor

echo Done
