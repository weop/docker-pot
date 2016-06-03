FROM ubuntu:16.04

COPY root /

RUN apt update && \
    apt upgrade -y

RUN apt install -y openssh-server && \
    mkdir /var/run/sshd

RUN echo root:root | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]