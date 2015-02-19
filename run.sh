#!/bin/sh

echo $ZOO_ID > /zookeeper/data/myid

/zookeeper-*/bin/zkServer.sh start-foreground

