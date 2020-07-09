# Dockerfile to run stuff on Raspberry Pi

FROM raspbian/stretch:latest
LABEL "maintainer"="Vadym S. Khondar <vadym@khondar.name>"
LABEL "description"="Raspbian Stretch container with libraspberrypi."

RUN apt update && \
    apt upgrade -y && \
    apt install -y libraspberrypi-bin && \
    apt install -y gdb && \
    apt clean

ENTRYPOINT [ "/bin/bash" ]

# end