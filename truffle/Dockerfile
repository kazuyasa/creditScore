FROM node:9-alpine

RUN apk add -t .gyp --no-cache git python g++ make \
    && npm install -g truffle \
    && apk del .gyp

RUN mkdir -p /src
WORKDIR /src

EXPOSE 8080
ENTRYPOINT []