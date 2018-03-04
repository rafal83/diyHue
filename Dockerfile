FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install git curl
RUN curl https://raw.githubusercontent.com/shivasiddharth/diyHue/master/BridgeEmulator/easy_install.sh | bash

WORKDIR /opt/hue-emulator/
CMD /opt/hue-emulator/HueEmulator3.py
