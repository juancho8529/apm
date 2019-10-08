#!/bin/bash
executingFolder=$(dirname ${BASH_SOURCE[0]})
if [ "$executingFolder" == "." ] ; then
   executingFolder=$(pwd)
fi


# Pré-requis
setupUrl="http://portail-depotspaquets.services.rq/artifactory/automatisation-generic-stable/appdynamics/platform-setup-x64-linux-4.5.13.20661.sh"

yum install libaio -y
yum install numactl -y
yum install tzdata -y
yum install ncurses-libs -y

mkdir -p /etc/fonts/
cd $executingFolder
yes | cp -rf files/local.conf /etc/fonts/local.conf

curl $setupUrl > files/platform-setup-x64-linux.sh
chmod +x files/platform-setup-x64-linux.sh
./files/platform-setup-x64-linux.sh -q -varfile $executingFolder/files/response.varfile
