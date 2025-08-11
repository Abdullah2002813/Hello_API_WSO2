
# Project 01 - WSO2 Micro Integrator CI/CD Pipeline with Jira Integration & Kubernetes Deployment

## Overview

This project demonstrates a complete DevOps pipeline for deploying a WSO2 Micro Integrator (WSO2 MI) API with continuous integration, automated testing, Jira issue tracking on failures, and deployment to a Kubernetes cluster. 

The goal is to build hands-on experience with DevOps practices while targeting a real-world internship environment at WSO2.

---

## Project Components

- **WSO2 Micro Integrator**: Lightweight integration runtime for APIs and microservices.
- **Custom API**: A simple RESTful API defined in XML (`HelloAPI.xml`) deployed on WSO2 MI.
- **Docker**: Containerized the WSO2 MI with the custom API.
- **GitHub Actions**: Automated CI/CD pipeline to build, test, and deploy the API.
- **Jira Integration**: Automatically create Jira issues on pipeline failures.
- **Kubernetes**: Deployment of the WSO2 MI Docker image to a local Kubernetes cluster (Minikube).
- **Monitoring & Notifications**: Pipeline status badges and notifications.

---

## Custom API (`HelloAPI.xml`)

This simple RESTful API responds to HTTP GET requests at `/hello` endpoint with a greeting message.

```xml
<api xmlns="http://ws.apache.org/ns/synapse" name="HelloAPI" context="/hello">
   <resource methods="GET" uri-template="/">
      <inSequence>
         <respond>
            <message>
               <text>Hello from WSO2 Micro Integrator!</text>
            </message>
         </respond>
      </inSequence>
   </resource>
</api>

How to run locally

1. Build the Docker image
Make sure you have the WSO2 Micro Integrator zip ( wso2mi-4.4.0.zip) and API XML inside the project folder.
 
2. Run the container

3. Access the API
 Open your browser
   http://localhost:8290/hello

## CI/CD Pipeline (GitHub Actions)
- Builds the Docker image on every push to the main branch.
- Runs the container and performs API tests automatically.
- If the tests fail, creates a Jira issue for incident tracking.
- Cleans up containers after testing.

*Pipeline configuration file is located at `.github/workflows/ci-cd-pipeline.yml`.*

---

## Jira Integration
- Uses a GitHub Actions step to create Jira issues on pipeline failure.
- Requires Jira API token, user email, and base URL configured as GitHub Secrets.
- Automatically tracks issues with details and links to GitHub workflow run.

---

## Kubernetes Deployment
- Docker image is pushed to Docker Hub.
- Deployment manifests (`deployment.yaml`, `service.yaml`) can be used to deploy WSO2 MI to Kubernetes (Minikube or cloud).
- Service is exposed via NodePort or port-forwarding for local access.

---

## Technologies Used

Docker, Kubernetes, Minikube, WSO2 Micro Integrator, GitHub Actions, Jira API, Bash scripting, REST API, XML configuration, Curl

---

## Skills Demonstrated
- Containerization and orchestration
- Continuous integration and delivery (CI/CD)
- Automated testing and validation
- Issue tracking integration with Jira
- Kubernetes deployment and service exposure
- Shell scripting and API testing
- Version control and Git workflows

---

## Future Improvements
- Add monitoring tools like Prometheus or Datadog
- Enhance API complexity and integration scenarios
- Add Helm charts for better Kubernetes management
- Implement Slack or email notifications for pipeline status
- Integrate Infrastructure as Code (Terraform)

---

## Author

Abdullah Abdulhameedhu


