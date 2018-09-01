FROM alpine

RUN apk add --update nodejs \
    && apk add --update git \
    && wget "https://github.com/elm/compiler/releases/download/0.19.0/binaries-for-linux.tar.gz" \
    && tar xzf binaries-for-linux.tar.gz \
    && mv elm /usr/local/bin/

RUN mkdir -p /usr/src
WORKDIR /usr/src

RUN git clone https://github.com/evancz/elm-architecture-tutorial.git

EXPOSE 8000

VOLUME /src
