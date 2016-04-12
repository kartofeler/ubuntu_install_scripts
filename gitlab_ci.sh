#!/bin/bash

curl -sSL https://get.docker.com/ | sh
https://packages.gitlab.com/install/repositories/runner/gitlab-ci-multi-runner/script.deb.sh | sudo bash
apt-get install gitlab-ci-multi-runner -y
