#!/usr/bin/env bash

HOST=`hostname`
cd /usr/local/spark
./sbin/start-master.sh
./sbin/start-slave.sh spark://$HOST:7077

cd /spark-training/notebook
jupyter notebook --allow-root