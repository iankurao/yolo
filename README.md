
# IP3 Configuration Management 

# E-Commerce Dashboard Application
This repository contains a Dockerized e-commerce application that allows you to manage and add products. The application uses a MongoDB database and is built with Node.js and React. The goal is to create a containerized environment for running the application.

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

To see the Docker images, check my Docker Hub profile: [faithkimani](https://hub.docker.com/u/iankurao)

## Requirements

Make sure that you have the following installed:
- [Node.js](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04)
- npm
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the MongoDB service with `sudo service mongod start`
- [Docker](https://docs.docker.com/engine/install/)
- [Vagrant](https://www.vagrantup.com/docs/installation)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
- [Terraform](https://learn.hashicorp.com/terraform/getting-started/install)

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

 ### Configuration Management

Ansible is used for configuration management and application deployment. 

The playbook is located in the ansible directory and defines tasks to set up Docker containers for the client and backend services.

Roles: Each container is configured in its own unique role for modularity and reusability.
Variables: Variables are used for configuration values to make the playbook flexible and easy to manage.
Blocks and Tags: Tasks are grouped using blocks and tags for better organization and ease of execution.
