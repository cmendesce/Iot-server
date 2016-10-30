# Iot-server

This is an application for receive requests from iot devices and send them to firebase cloud message.

* Configuration
Set the API Key of Firebase Cloud Message in the ```application.yml``` file.

## Building
- Install docker
- Install docker-compose 
- Install java 8
- Install maven

After all dependencies installed, run ```mvn package``` to genenate docker images and build application. 
Now just run ```docker-compose up``` and enjoy it.


