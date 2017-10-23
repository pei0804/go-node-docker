FROM golang:1.9.1
RUN apt-get update
RUN apt-get install -y git python jq curl

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm install gulp -g
RUN npm install yarn -g