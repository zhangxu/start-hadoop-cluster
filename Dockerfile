FROM oraclelinux:7-slim

ADD ./jdk-8u121-linux-x64.tar.gz /opt/
ADD ./hadoop-2.7.3.tar.gz /opt/

RUN mv /opt/jdk* /opt/jdk && mv /opt/hadoop* /opt/hadoop

RUN echo "PATH=/opt/jdk/bin:/opt/hadoop/bin:/opt/hadoop/sbin:\$PATH" > /etc/profile.d/hadoop-path.sh && \
  echo "JAVA_HOME=/opt/jdk" >> /etc/profile.d/hadoop-path.sh

ENTRYPOINT ["bash", "-li"]
