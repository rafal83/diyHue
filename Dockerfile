FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install git curl nmap python3 python3-pip
RUN export LC_ALL=C; pip3 install requests ws4py
RUN cd /tmp; git clone https://github.com/mariusmotea/diyHue.git
RUN mkdir /opt/hue-emulator
RUN cd diyHue/BridgeEmulator/; cp HueEmulator3.py coap-client-linux config.json /opt/hue-emulator/; cp hue-emulator.service /lib/systemd/system/

WORKDIR /opt/hue-emulator/
CMD /opt/hue-emulator/HueEmulator3.py
