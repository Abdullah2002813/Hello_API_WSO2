FROM openjdk:11-jdk-slim

WORKDIR /home/wso2mi

# Install unzip tool
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*

# Copy the Micro Integrator pack
ADD wso2mi-4.4.0.zip .

# Unzip and clean up
RUN unzip wso2mi-4.4.0.zip && rm wso2mi-4.4.0.zip

# Copy your API file into MI deployment folder
COPY ./api /home/wso2mi/wso2mi-4.4.0/repository/deployment/server/synapse-configs/default/api

# Expose the default port
EXPOSE 8290

# Start the Micro Integrator
CMD ["sh", "wso2mi-4.4.0/bin/micro-integrator.sh"]