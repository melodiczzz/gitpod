#FROM gitpod/workspace-full-vnc

# Install dependencies
# Install mongodb
#RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
#RUN echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-4.0.list
#RUN  apt-get update \
# &&  apt-get install -y mongodb-org
FROM debian:latest

# To avoid bricked workspaces (https://github.com/gitpod-io/gitpod/issues/1171)
ARG DEBIAN_FRONTEND=noninteractive

USER root

RUN true \
	&& apt install -y \
		novnc \
		chromium

USER gitpod

# Otherwise this outputs 'gitpod@ws-ce281d58-997b-44b8-9107-3f2da7feede3:/workspace/gitpod-tests1$'' in terminal
RUN printf '%s\n' \
	"export PS1='\[\e]0;\u \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\] \[\033[01;34m\]\w \$ \[\033[00m\]'" \
	>> "$HOME/.bashrc"
    
#RUN  mkdir -p /data/db \
# &&  chown gitpod:gitpod -R /data/db
