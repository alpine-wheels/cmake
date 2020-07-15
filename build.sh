#!/bin/sh

set -e

# install dependencies
apk add --no-cache cmake g++ gcc git linux-headers make musl-dev openssl-dev
pip install scikit-build

# build
CXX="/usr/bin/g++" pip wheel --no-deps --requirement requirements.txt
