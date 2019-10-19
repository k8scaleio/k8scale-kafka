#!/bin/bash -e
echo $PWD
KAFKA_HOME=/opt/kafka
echo $KAFKA_HOME
echo $ZOOKEEPER_CONNECT
cd $KAFKA_HOME
sed -i "s/^zookeeper.connect=.*/zookeeper.connect=k8scale-zookeeper-1:2181/g" $KAFKA_HOME/config/server.properties
cat $KAFKA_HOME/config/server.properties | grep 'zookeeper.connect'
sh $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

