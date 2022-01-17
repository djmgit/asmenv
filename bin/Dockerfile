FROM ubuntu:18.04

WORKDIR /asmenv
ADD build_and_run.sh /asmenv

# install dependencies
RUN apt update && \
    apt install -y binutils && \
    # for debugging
    apt install -y vim && \
    # a simple pid 1 process for handling of singnals
    apt install -y dumb-init && \
    #make script executable
    chmod +x build_and_run.sh && \
    # finally install nasm
    apt install -y nasm

CMD "/asmenv/build_and_run.sh"
