#!/bin/sh

export OPENGROK_VERSION=0.12.1
export OPENGROK_DIR=/var/opengrok
export OPENGROK_INSTANCE_BASE=$OPENGROK_DIR/opengrok-$OPENGROK_VERSION

mkdir -p $OPENGROK_DIR
mkdir -p $OPENGROK_DIR/src
mkdir -p $OPENGROK_DIR/data
mkdir -p $OPENGROK_DIR/web/searchDalet

cd $OPENGROK_DIR
# wget -O - https://java.net/projects/opengrok/downloads/download/$OPENGROK_BASE.tar.gz | tar zxvf -

cd $OPENGROK_DIR/web/searchDalet
tar -zxvf $OPENGROK_INSTANCE_BASE/lib/source.war
unzip $OPENGROK_INSTANCE_BASE/lib/source.war
