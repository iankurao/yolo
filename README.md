
# IP3 Configuration Management 

# E-Commerce Dashboard Application
This repository contains a Dockerized e-commerce application that allows you to manage and add products. The application uses a MongoDB database and is built with Node.js and React. The goal is to create a containerized environment for running the application.

##
To see the images check my dockerhub profiles
https://hub.docker.com/u/iankurao

## Requirements
Make sure that you have the following installed:
- [node](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-22-04) 
- npm 
- [MongoDB](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/) and start the mongodb service with `sudo service mongod start`
- [Docker](https://docs.docker.com/engine/install/) is installed on your machine
- [Vagrant](https://www.vagrantup.com/docs/installation) 
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Clone the repository
``ssh
`git clone git@github.com/iankurao/yolo.git`

`cd yolo`

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

 ### you can opt to create a .env file to hold your mongo url or opt to have it on server.js, the safest option is to have it on a .env file

 ## Steps to Run with Docker

 ### Go ahead and add a product (note that the price field only takes a numeric input)
