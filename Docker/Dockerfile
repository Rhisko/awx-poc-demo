FROM ubuntu:22.04

# Install SSH & Python
RUN apt-get update && \
    apt-get install -y openssh-server python3 sudo && \
    mkdir /var/run/sshd && \
    echo 'root:rootpass' | chpasswd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd && \
    mkdir -p /root/.ssh

# Expose SSH
EXPOSE 22

# Run SSH daemon
CMD ["/usr/sbin/sshd", "-D"]
