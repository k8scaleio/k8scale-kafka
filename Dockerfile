FROM openjdk:8-jdk-alpine
RUN apk add --no-cache bash curl
RUN wget https://www-us.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz
RUN tar -xzf kafka_2.12-2.3.0.tgz
RUN cp -r kafka_2.12-2.3.0 /opt/kafka
RUN ls -lrt /opt/kafka
COPY startup.sh /usr/bin
RUN chmod a+x /usr/bin/startup.sh
RUN ls -lrt /usr/bin

#EXPOSE 3030
# Command to run the executable
CMD ["startup.sh"]
