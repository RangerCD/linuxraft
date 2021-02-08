#!/usr/bin/env bash

LINUXRAFT_DIR=$(cd `dirname $0`; pwd)

source ${LINUXRAFT_DIR}/utils.sh

download https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar BuildTools.jar

java -jar BuildTools.jar
