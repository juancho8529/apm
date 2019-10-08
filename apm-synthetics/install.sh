#!/bin/bash
executingFolder=$(dirname ${BASH_SOURCE[0]})
if [ "$executingFolder" == "." ] ; then
   executingFolder=$(pwd)
fi

$syntheticHome=/progiciel/appdynamics/synthetic-server
$syntheticSource="https://..."
$syntheticSourceLocal="$executingFolder\files\appdynamics-synthetic-server.zip"

mkdir -p $syntheticHome
curl $syntheticSource>$syntheticSourceLocal

unzip -d $syntheticHome $syntheticSourceLocal

yes | cp -rf $executingFolder/files/inputs.groovy $syntheticHome/inputs.groovy


#phyton (prérequis)
yum install python27-python-pip
source /opt/rh/python27/enable

mkdir /root/.pip
yes | cp -rf $executingFolder/files/pip.conf /root/.pip/pip.conf


pip install flake8

# Java
yum install java-1.8.0-openjdk-devel -y
export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))

cd $syntheticHome
unix/deploy.sh install

# POST-CONFIG
# /!\ Tâche manuel: Configuration dans le contrôleur pour synthetic
# 	https://docs.appdynamics.com/display/PRO45/Configure+the+Controller+for+the+Synthetic+Server
# 	
# 	Curiosité: select * from global_configuration where name='eum.synthetic.onprem.installation';
	