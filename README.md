# Challenges

# Task 1 - Minimalist Application Development / Docker / Kubernetes

To achieve this challenge I have developed the application in python using flask

All the application related files are under /app directory

Steps

- To Use and Run the application Please follow below steps
 - First clone the Repository
     
    ```bash
     git clone https://github.com/Aravind-pendyala24/Challenges_Particle41.git
     ```
 - Get into /app directory

    ```bash
    cd /app
     ```
 - Run Docker build

   ```bash
     docker build -t SimpleTimeService:v1 .
     ```
 - Run application

    ```bash
     docker run -d -p 5000:5000 SimpleTimeService:v1
     ```
 - The Docker Image is pushed to Dockerhub as well . Please follow below instructions to pull and run the image

   ```bash
     docker pull aravinduser12/particle41app:v1
     docker run -d -p 5000:5000 aravinduser12/particle41app:v1
     ```
   Below is the DockerHub URL for the same

   ```bash
      https://hub.docker.com/r/aravinduser12/particle41app
     ```

# Task 2 - Terraform and Cloud: create the infrastructure to host your container

All the terraform related files are created under terraform directory

- To use the terraform files Please follow below steps

  - First clone the Repository
     
    ```bash
     git clone https://github.com/Aravind-pendyala24/Challenges_Particle41.git
     ```
  - Get into /app directory

    ```bash
    cd /terraform
     ```
  - Edit terraform.tfvars to provide access and secret key under terraform directory
 
  - Run Terraform Init to Intialize terraform

     ```bash
    terraform init
     ```
  - Run Terraform Plan

     ```bash
    terraform plan
     ```
   - Run Terraform apply

     ```bash
     terraform apply -auto-approve
      ```

  Used Gen AI to get to know the required and optional fields for the terraform resources to create and on an idea to develop an app using python
  
    
   

   
    
