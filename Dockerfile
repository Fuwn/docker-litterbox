FROM debian:12.2-slim as builder

RUN apt-get clean && apt-get -y update

RUN apt-get install -y libtls-dev git pkg-config make build-essential libsqlite3-dev

WORKDIR /litterbox

RUN git clone https://git.causal.agency/litterbox

WORKDIR /litterbox/litterbox

RUN ./configure

RUN make all

RUN make install

WORKDIR /root/.config/litterbox

CMD ["litterbox", "default"]
