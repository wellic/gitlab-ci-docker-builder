#!/usr/bin/env bash

set -u
#set -x

VERSION_GIT_TAG=18.06

git tag -d "$VERSION_GIT_TAG"
git tag -am "$VERSION_GIT_TAG" "$VERSION_GIT_TAG"
git push --delete origin
git push --tags origin
