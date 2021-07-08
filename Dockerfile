FROM gitpod/workspace-full-vnc

# Install dependencies
# Install mongodb
#RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
#RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-4.0.list
#RUN  apt-get update \
# &&  apt-get install -y mongodb-org
#FROM debian:latest

USER root

RUN sudo apt-get update \
    && sudo apt-get install -y libgtk-3-dev \	    && sudo apt-get install -y build-essential libgtk-3-dev chromium-browser \
    && sudo apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/* 	    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
    
#RUN  mkdir -p /data/db \
# &&  chown gitpod:gitpod -R /data/db
USER gitpod
