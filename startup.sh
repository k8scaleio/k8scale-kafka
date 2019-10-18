#!/bin/bash -e
echo $PWD
KAFKA_HOME=/opt/kafka
echo $KAFKA_HOME
cd $KAFKA_HOME
ls
sh $KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties

