#!/bin/sh

ROOT_DIR=/var/opengrok
OG_VER=0.12.1
APP_DIR=$ROOT_DIR/opengrok-$OG_VER

mkdir -p $ROOT_DIR
mkdir -p $ROOT_DIR/src
mkdir -p $ROOT_DIR/data
mkdir -p $ROOT_DIR/etc
mkdir -p $ROOT_DIR/web/searchDalet

cd $ROOT_DIR
# wget -O - https://java.net/projects/opengrok/downloads/download/$OPENGROK_BASE.tar.gz | tar zxvf -

cd $ROOT_DIR/web/searchDalet
unzip $APP_DIR/lib/source.war
cp -r $ROOT_DIR/web/searchDalet $ROOT_DIR/web/searchBrio
cp -r $ROOT_DIR/web/searchDalet $ROOT_DIR/web/searchAmberfin

sed -i 's/configuration.xml/configurationSearchDalet.xml/g'    $ROOT_DIR/web/searchDalet/WEB-INF/web.xml
sed -i 's/configuration.xml/configurationSearchBrio.xml/g'     $ROOT_DIR/web/searchBrio/WEB-INF/web.xml
sed -i 's/configuration.xml/configurationSearchAmberfin.xml/g' $ROOT_DIR/web/searchAmberfin/WEB-INF/web.xml

