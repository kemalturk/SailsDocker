FROM ubuntu:latest

MAINTAINER Kemal Turk <kmltrk07@gmail.com>

#Ubuntu dependencies
RUN apt-get update
RUN apt-get install -y sudo
RUN sudo apt-get install -y --no-install-recommends apt-utils
RUN sudo apt-get install -y wget gnupg
RUN sudo apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y build-essential
RUN sudo npm i npm@latest -g

RUN sudo npm install sails -g
