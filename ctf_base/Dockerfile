FROM ubuntu:latest

# We install all packages we will need for CTFs
RUN apt-get update && apt-get install -y openssh-server nano vim cron sudo tree python3 unzip tar file curl less binutils \
    && mkdir -p /ctf_config

COPY start.sh /ctf_config
RUN chmod 550 /ctf_config/start.sh

# ssh port exposed for ctf users 
EXPOSE 22

# default start command 
ENTRYPOINT [ "/ctf_config/start.sh" ]
