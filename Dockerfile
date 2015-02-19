FROM centos:latest

RUN yum install -y java-1.7.0-openjdk-devel tar gunzip wget

ADD zoo.cfg /zookeeper-3.4.6/conf/

RUN wget http://apache.mirrors.lucidnetworks.net/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz -O /tmp/zookeeper.tgz
RUN tar -zxf /tmp/zookeeper.tgz -C /

RUN mkdir /zoodata
VOLUME /zoodata

EXPOSE 2181
EXPOSE 2888
EXPOSE 3888

ADD run.sh /run.sh
CMD ["/run.sh"]










