#!/bin/bash
# 先切换用户
su hdfs
# 免密登录
ssh-keygen -t rsa
ssh-copy-id hadoop-master
ssh-copy-id hadoop-node1
ssh-copy-id hadoop-node2
#配置环境变量
export JAVA_HOME=/home/hadoop/jdk
export HADOOP_HOME=/home/hadoop/hadoop
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
