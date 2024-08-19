
# WEEK 8 IP4 Orchestration

# E-Commerce Dashboard Application

This repository contains a Dockerized e-commerce application that has been deployed on a Google Kubernetes Engine (GKE) cluster. The application includes a frontend built with React, a backend using Node.js, and MongoDB as the database.

## Table of Contents

1. [Docker Hub Images](#docker-hub-images)
2. [Requirements](#requirements)
3. [Project Structure](#project-structure)
4. [Setup Instructions](#setup-instructions)
    - [Clone the Repository](#clone-the-repository)
    - [Start the Vagrant Machine](#start-the-vagrant-machine)
    - [SSH into the Vagrant Machine](#ssh-into-the-vagrant-machine)
    - [Run the Ansible Playbook](#run-the-ansible-playbook)
5. [Client Setup](#client-setup)
6. [Backend Setup](#backend-setup)
7. [Steps to Run with Docker](#steps-to-run-with-docker)
8. [Configuration Management](#configuration-management)
    - [Ansible](#ansible)
    - [Terraform](#terraform)
9. [Contributions](#contributions)
10. [License](#license)

## Docker Hub Images

To see the Docker images, check my Docker Hub profile: [iankurao](https://hub.docker.com/u/iankurao)

## Requirements
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- [Docker](https://docs.docker.com/get-docker/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

# Project Structure
   
 yolo/
    ├── ansible/
    │   ├── playbook.yml
    │   ├── 
    │   ├── hosts
    │   └── roles/
    │       ├── backend/
    │       │   └──tasks/
    │       │       └── main.yml
    │       │   
    │       ├── frontend/
    │       │   └── tasks/
    │       │       └── main.yml
    │       │   
    │       └── mongodb/
    │           ├── tasks/
    │           │   └── main.yml
    │           └── files/
    └── Vagrantfile


## THIS README DOCUMENTS the project through various stages from week 4- "Creating a basic microservice" to week 8- "KUBERNETES Orchestration Project" of my MORINGA SCHOOL DEVOPS Classes.

## WEEK 4 IP2 CREATING A BASIC MICROSERVICE

## Setup Instructions

### Clone the Repository

git clone git@github.com:iankurao/yolo.git
cd DevOps-Microservice-Setup

## start the Vagrant Machine
`vagrant up`

## SSH into the Vagrant Machine
`vagrant ssh`

## Navigate to the Project Directory and Run the Ansible Playbook
`ansible-playbook playbook.yml -i hosts`

## Navigate to the Client Folder 
 `cd client`

## Run the folllowing command to install the dependencies 
 `npm install`

## Node version
- The client uses an older version of Node, v14, after installing your dependencies, make the following changes to your package.json

` "scripts": {
  "start": "NODE_OPTIONS=--openssl-legacy-provider react-scripts start",
  "build": "NODE_OPTIONS=--openssl-legacy-provider react-scripts build",
  "test": "react-scripts test",
  "eject": "react-scripts eject"
  }, `

## Run the folllowing to start the app
 `npm start`

## Open a new terminal and run the same commands in the backend folder
 `cd ../backend`

 `npm install`

 `npm start`

 ## Steps to Run with Docker
1. Build the Docker images:
docker-compose build
2. Start the Docker containers:
docker-compose up



 # WEEK 6 IP3 Configuration Management

Ansible is used for configuration management and application deployment. 

The playbook is located in the ansible directory and defines tasks to set up Docker containers for the client and backend services.

Roles: Each container is configured in its own unique role for modularity and reusability.
Variables: Variables are used for configuration values to make the playbook flexible and easy to manage.
Blocks and Tags: Tasks are grouped using blocks and tags for better organization and ease of execution.

# Explanation

## Stage 1: Ansible Instrumentation

### Choice of Base Image
We chose Ubuntu 22.04 LTS as the base image for its stability and compatibility with Docker and Node.js.

### Dockerfile Directives
- `FROM`: Specifies the base image.
- `RUN`: Executes commands to set up the environment.
- `COPY`: Copies files from the local filesystem into the container.
- `CMD`: Specifies the command to run the application.

### Docker-Compose Networking
Docker-compose sets up a bridge network to allow communication between containers. Ports are allocated to expose services.

### Docker-Compose Volume
Volumes are used to persist data, especially for MongoDB, ensuring data persistence across container restarts.

## 5. Git Workflow
- Forked and cloned the repository.
- Created separate branches for each major change.
- Made descriptive commits for each step.
- Ensured a well-documented README file.
- created the diffrerent dockerfile, on client and backend
- created the images and pushed to my docker account
- updated my readme
- 
# WEEK 8 KUBERNETES ORCHESTRATION Structure

# Explanation of Kubernetes Orchestration Choices

## 1. Kubernetes Objects
- **Deployments**: Used for all components to ensure scalability and self-healing properties.
- **StatefulSets**: Chosen for MongoDB to ensure consistent naming and stable network identifiers.
- **Services**: LoadBalancer service used for frontend to expose it to the internet. ClusterIP used for internal communication between services.

## 2. Persistent Storage
- **PersistentVolume and PersistentVolumeClaim**: Used for MongoDB to ensure that data persists across pod restarts.

## 3. Exposing Pods
- **LoadBalancer**: Used to expose the frontend service to the internet.
- **ClusterIP**: Backend and MongoDB use ClusterIP for internal communication.


## 4. Git Workflow
- Forked and cloned the repository.
- Created separate branches for each major change.
- Made descriptive commits for each step.
- Ensured a well-documented README file.
- created the different dockerfile, on client and backend
- created the images and pushed to my docker account
- updated my readme
-  Followed a standard Git workflow with feature branches, frequent commits, and clear commit messages.

## 5. Debugging and Troubleshooting
- Encountered issues with LoadBalancer service not getting an external IP—resolved by double-checking the service type and firewall settings.

## 6. Best Practices
- Docker images are tagged with version numbers.
- Used environment variables for sensitive data management.
