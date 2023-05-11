# Download base image ubuntu 22.04
FROM ubuntu:22.04

# LABEL about the custom image
LABEL maintainer="samuelmiller0714@gmail.com"
LABEL version="0.1"
LABEL description="This is a custom Docker Image for mirage, or you could just boot DragonOS ;)"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update
RUN apt upgrade -y

# Install HackRF library to enable HackRF experimental support
RUN apt install -y libhackrf-dev