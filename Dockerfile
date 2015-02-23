#
# Gogs Dockerfile
#
# https://github.com/rosstimson/docker-gogs
#
# AUTHOR:   Ross Timson <ross@rosstimson.com>
# LICENSE:  WTFPL - http://wtfpl.net
#
# Installs Gogs: A self-hosted Git service written in Go
#
# Packer:   http://gogs.io
#


FROM golang:1.4
MAINTAINER Ross Timson <ross@rosstimson.com>

ENV GOGS_VERSION v0.5.13
ENV GOGS_PATH $GOPATH/src/github.com/gogits/gogs
ENV GOGS_CUSTOM_CONF_PATH $GOGS_PATH/custom/conf
ENV GOGS_CUSTOM_CONF $GOGS_CUSTOM_CONF_PATH/app.ini

RUN useradd -s /bin/bash -u 2000 -m -c gogs git
RUN mkdir -p $GOPATH/src/github.com/gogits \
    && git clone https://github.com/gogits/gogs.git $GOGS_PATH \
    && cd $GOGS_PATH \
    && git checkout -b $GOGS_VERSION \
    && go get -tags 'redis' ./... \
    && go build -tags 'redis' \
    && mkdir -p $GOGS_CUSTOM_CONF_PATH \
    && cp conf/app.ini $GOGS_CUSTOM_CONF \
    && chown -R git $GOGS_PATH

USER git
ENV HOME /home/git
ENV USER git
ENV PATH $GOGS_PATH:$PATH
# WORKDIR $GOGS_PATH - env var expansion doesn't work here.
WORKDIR /go/src/github.com/gogits/gogs
EXPOSE 3000
CMD ["gogs", "web"]
