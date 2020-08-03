FROM ubuntu:18.04

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN DEBIAN_FRONTEND=noninteractive apt-get update                                                 && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y less wget build-essential libdancer2-perl cpanminus  && \
    cpanm JSON::XS  && \
    echo "DONE"
EXPOSE 3000

CMD ["perl", "main.pl"]