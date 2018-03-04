FROM phusion/baseimage:0.10.0
RUN apt-get update
RUN apt-get -y install git curl nmap python3 python3-pip nano
RUN pip3 install requests ws4py

WORKDIR /opt/hue-emulator/

RUN cd /tmp; git clone https://github.com/mariusmotea/diyHue.git
RUN cd /tmp/diyHue/BridgeEmulator/; cp HueEmulator3.py coap-client-linux config.json /opt/hue-emulator/

EXPOSE 80
EXPOSE 1900

ENTRYPOINT ["/opt/hue-emulator/HueEmulator3.py"]
