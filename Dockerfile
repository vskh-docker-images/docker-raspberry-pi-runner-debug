# Dockerfile to run stuff on Raspberry Pi

FROM balenalib/raspberry-pi-debian:latest
LABEL "maintainer"="Vadym S. Khondar <vadym@khondar.name>"
LABEL "description"="Rapbian Bullseye (belenaOS) container with libraspberrypi & gdb."

RUN apt update && \
    apt upgrade -y && \
    apt install -y libraspberrypi-bin && \
    apt install -y gdb && \
    apt clean

ENTRYPOINT [ "/bin/bash" ]

# end
