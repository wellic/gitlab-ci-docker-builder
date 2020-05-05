#!/usr/bin/env bash

set -u
#set -x
#set -v

VERSION_GIT_TAG=$1
[[ "$VERSION_GIT_TAG" = '' ]] && exit 0

git tag | grep -q "$VERSION_GIT_TAG" &&  git tag -d "$VERSION_GIT_TAG"
git tag -am "$VERSION_GIT_TAG" "$VERSION_GIT_TAG"

cat <<HELP
################################################################################

git push --delete origin "$VERSION_GIT_TAG"
git push --tags origin
git push origin

################################################################################

HELP


#Tips:
#Clean all tags
#for t in `git tag -l`; do git tag -d $t; git push --delete origin $t; done