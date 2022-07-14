from ubuntu:latest
RUN apt-get update && apt-get install -y ansible
RUN apt-get install sudo

RUN useradd -ms /bin/bash adrien
RUN adduser adrien sudo
RUN echo "adrien:adrien" | chpasswd

USER adrien
WORKDIR /home/adrien
ARG DEBIAN_FRONTEND=noninteractive
