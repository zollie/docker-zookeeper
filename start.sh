#!/bin/bash

ZOO_ID=$1; shift

docker run -d --name=zookeeper --restart=always -p 2181:2181 -p 2888:2888 -p 3888:3888 -e "ZOO_ID=$ZOO_ID" zollie/zookeeper "$@" 


