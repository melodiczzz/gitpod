FROM gitpod/workspace-full-vnc

# Install dependencies
# Install mongodb
#RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
#RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-4.0.list
#RUN  apt-get update \
# &&  apt-get install -y mongodb-org
USER gitpod

ARG DEBIAN_FRONTEND=noninteractive

# Install Cypress dependencies.
RUN sudo apt-get update \
 && sudo apt-get install -yq \
   libgtk2.0-0 \
   libgtk-3-0 \
   libnotify-dev \
   libgconf-2-4 \
   libnss3 \
   libxss1 \
   libasound2 \
   libxtst6 \
   xauth \
   xvfb \
 && sudo rm -rf /var/lib/apt/lists/*

# Install Chromium
RUN sudo apt-get update -q \
 && sudo apt-get install -yq \
   chromium-browser \
 && sudo rm -rf /var/lib/apt/lists/*
    
#RUN  mkdir -p /data/db \
# &&  chown gitpod:gitpod -R /data/db
