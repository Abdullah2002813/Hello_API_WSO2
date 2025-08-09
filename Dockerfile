FROM openjdk:11-jdk-slim

WORKDIR /home/wso2mi

RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/wso2/micro-integrator/releases/download/v4.4.0/wso2mi-4.4.0.zip && \
    unzip wso2mi-4.4.0.zip && rm wso2mi-4.4.0.zip

COPY ./api /home/wso2mi/wso2mi-4.4.0/repository/deployment/server/synapse-configs/default/api

EXPOSE 8290

CMD ["sh", "wso2mi-4.4.0/bin/micro-integrator.sh"]