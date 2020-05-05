#!/usr/bin/env bash

set -u
#set -x

#https://gitlab.com/orobardet/gitlab-ci-linter
wget https://dl.bintray.com/orobardet/gitlab-ci-linter/v2.0.0/gitlab-ci-linter.linux-amd64 -O gitlab-ci-linter
chmod +x gitlab-ci-linter
