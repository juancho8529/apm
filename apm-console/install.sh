#!/bin/bash

# Pré-requis
setupUrl="PROVIDE A VALID URL"

yum install libaio -y
yum install numactl -y
yum install tzdata -y
yum install ncurses-libs -y

mkdir -p /etc/fonts/
cd "$( dirname "${BASH_SOURCE[0]}" )"
cp files/local.conf /etc/fonts/local.conf

curl $setupUrl > files/platform-setup-x64-linux.sh
. files/platform-setup-x64-linux.sh -q -varfile files/response.varfile
