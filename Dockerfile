FROM ubuntu:22.04
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

RUN apt-get update
RUN apt-get update --fix-missing
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
  && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
  && apt-get update \
  && apt-get install -y zip unzip libncurses5 wget git build-essential cmake curl libboost-all-dev libcurl4-openssl-dev libgmp-dev libssl-dev libusb-1.0.0-dev libzstd-dev time pkg-config llvm-11-dev nginx npm yarn jq gdb lldb \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/AntelopeIO/cdt/releases/download/v3.0.0-rc3/cdt_3.0.0-rc3_amd64.deb
RUN wget https://github.com/AntelopeIO/leap/releases/download/v3.1.0/leap-3.1.0-ubuntu22.04-x86_64.deb
RUN apt-get update
RUN apt-get upgrade -y
RUN apt install -y ./cdt_3.0.0-rc3_amd64.deb ./leap-3.1.0-ubuntu22.04-x86_64.deb