FROM jupyter/all-spark-notebook

USER root

RUN mkdir /spark-training

ADD ./data /spark-training/data
RUN tar -xzf /spark-training/data/sample.tar.gz /spark-training/data/
ADD ./notebook /spark-training/notebook

COPY spark-env.sh /usr/local/spark/conf/spark-env.sh

COPY start.sh ./

RUN chmod 0755 ./start.sh

CMD ["./start.sh"]