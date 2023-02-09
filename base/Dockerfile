FROM centos:centos7
LABEL maintainer="nb@nbtyfood.com"
WORKDIR /home/hadoop
ADD hadoop-3.3.1.tar.gz ./
ADD jdk-8u351-linux-x64.tar.gz ./
RUN yum install -y openssh-server openssh-clients rsync vim \
    && ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N "" -q \
    && ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N "" -q \
    && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N "" -q \
    && groupadd hadoop \
    && useradd hdfs -g hadoop \
    && echo "root:root" | chpasswd \
    && echo "hdfs:hdfs" | chpasswd \
    && mkdir /var/run/sshd \
    && mkdir /home/hadoop/tmp \
    && chown -R hdfs:hadoop /home/hadoop \
    && mv hadoop-3.3.1 hadoop \
    && mv jdk1.8.0_351 jdk
EXPOSE 22 9870 8088 50070
VOLUME /home/hadoop/tmp
CMD ["/usr/sbin/sshd","-D"]