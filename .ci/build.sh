#!/bin/sh
set -eu

set -a
. .ci/lib.sh
set +a

echo "Building $APP_NAME-$APP_COMPONENT"

export GOPATH='/woodpecker/go'
export CGO_ENABLED=0

xldflags=""
xldflags="$xldflags -X main.version=$APP_VERSION"

go build -v -ldflags "-s -w $xldflags" -o "dist/$APP_COMPONENT"

ls -lh ./dist

echo 'Done'
