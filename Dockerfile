# syntax=docker/dockerfile:experimental
FROM mcr.microsoft.com/dotnet/sdk:5.0
USER root
#Update ubuntu
RUN apt-get update --force-yes
# Install ssh client and git
RUN apt install openssh-server git --yes

# Download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

RUN apt-get install --yes npm

RUN npm install -g aws-cdk
