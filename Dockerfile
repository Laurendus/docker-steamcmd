FROM debian:stable-slim
RUN apt-get install steamcmd
CMD ["steamcmd"]
