# syntax=docker/dockerfile:experimental
FROM mcr.microsoft.com/dotnet/sdk:5.0
USER root
#Update ubuntu
RUN apt-get update --force-yes
# Install ssh client and git
RUN apt install openssh-server git --yes

# Download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts
