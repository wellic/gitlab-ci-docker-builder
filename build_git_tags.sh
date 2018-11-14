#!/usr/bin/env bash

set -u
set -x

VERSION_GIT_TAG=${1:-18.06}

git tag -d "$VERSION_GIT_TAG"
git tag -am "$VERSION_GIT_TAG" "$VERSION_GIT_TAG"

cat <<HELP

git push --delete origin "$VERSION_GIT_TAG"; \
git push --tags origin;\
git push origin

HELP
