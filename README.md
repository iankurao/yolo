
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
   

   ├── client
   │ ├── Dockerfile
   │ ├── package.json
   │ ├── src
   │ └── ...
   ├── backend
   │ ├── Dockerfile
   │ ├── package.json
   │ ├── src
   │ └── ...
   ├── ansible
    │ ├── playbook.yml
    │ ├── roles
    │ ├── hosts
   │ └── ...
   ├── terraform
    │ ├── main.tf
    │ ├── variables.tf
    │ └── ...
   ├── Vagrantfile
   ├── docker-compose.yml
   └── README.md


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
