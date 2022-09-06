FROM ubuntu:20.04
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y zip unzip wget git gcc curl nodejs npm

# leap & cdt
RUN wget https://github.com/AntelopeIO/cdt/releases/download/v3.0.0-rc3/cdt_3.0.0-rc3_amd64.deb
RUN wget https://github.com/AntelopeIO/leap/releases/download/v3.1.0/leap-3.1.0-ubuntu20.04-x86_64.deb
RUN apt install -y ./cdt_3.0.0-rc3_amd64.deb ./leap-3.1.0-ubuntu20.04-x86_64.deb
RUN rm ./cdt_3.0.0-rc3_amd64.deb ./leap-3.1.0-ubuntu20.04-x86_64.deb

# go
RUN wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz
RUN rm go1.18.4.linux-amd64.tar.gz
RUN export PATH=$PATH:/usr/local/go/bin

# yarn
RUN npm i -g yarn@1.22.15

# dfuseeos
RUN git clone https://github.com/pinax-network/dfuse-eosio --recursive
RUN cd dfuse-eosio
RUN git checkout mandel_updates
RUN ./scripts/build.sh
RUN sudo mv /home/ubuntu/go/bin/dfuseeos /usr/bin/
RUN cd ../
RUN rm -rf dfuse-eosio
RUN dfuseeos --version