FROM node:8.9.0

RUN curl -O https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz | sha256sum go1.9*.tar.gz \
    && tar xvf go1.7.4.linux-amd64.tar.gz \
    && chown -R root:root ./go \
    && mv go /usr/local \
    | echo export GOROOT=$HOME/go >> ~/.bash_profile \
    | echo export GOPATH=$HOME/work >> ~/.bash_profile \
    | echo export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin >> ~/.bash_profile

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg \
    | apt-key add && echo "deb https://dl.yarnpkg.com/debian/ stable main" \
    | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install yarn \
    && rm -rf /var/lib/apt/lists/*
