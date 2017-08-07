FROM debian:stable-slim
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y lib32gcc1 curl && \
    apt-get clean && \
    mkdir /steam && cd /steam && \
    curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
CMD ["steamcmd"]
