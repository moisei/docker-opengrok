FROM ubuntu:14.04
MAINTAINER Zero Cho "http://itsze.ro/"

export OPENGROK_VERSION=0.12.1
export OPENGROK_DIR=/var/opengrok
export OPENGROK_INSTANCE_BASE=$OPENGROK_DIR/opengrok-$OPENGROK_VERSION

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless exuberant-ctags git subversion mercurial tomcat7 wget unzip
ADD install.sh /usr/local/bin/install
RUN /usr/local/bin/install
ADD run.sh /usr/local/bin/run
ENTRYPOINT ["/usr/local/bin/run"]

EXPOSE 8080
