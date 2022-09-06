FROM golang:1.18

RUN go install github.com/GeertJohan/go.rice/rice@latest

RUN curl -sL https://deb.nodesource.com/setup_16.x  | bash -
RUN apt-get -y install nodejs

# yarn
RUN npm i -g yarn@1.22.15

# dfuseeos
RUN git clone https://github.com/pinax-network/dfuse-eosio --recursive
WORKDIR dfuse-eosio
RUN git checkout mandel_updates
RUN ./scripts/build.sh
RUN cd ../
RUN rm -rf dfuse-eosio