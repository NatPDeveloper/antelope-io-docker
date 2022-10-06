FROM ubuntu:18.04
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get upgrade -y
RUN apt-get -y install curl gnupg wget make cmake ca-certificates
RUN curl -sL https://deb.nodesource.com/setup_16.x  | bash -
RUN apt-get -y install nodejs
RUN wget https://github.com/AntelopeIO/cdt/releases/download/v3.0.1/cdt_3.0.1_amd64.deb
RUN wget https://github.com/AntelopeIO/leap/releases/download/v3.1.2/leap-3.1.2-ubuntu18.04-x86_64.deb
RUN apt install -y ./cdt_3.0.1_amd64.deb ./leap-3.1.2-ubuntu18.04-x86_64.deb
RUN rm ./cdt_3.0.1_amd64.deb ./leap-3.1.2-ubuntu18.04-x86_64.deb

RUN npm i -g @liquidapps/zeus-cmd@staging