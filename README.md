# app pipeline

This node app shows a simple user profile app set up
- index.html with pure js and css styles
- nodejs backend with express module
- mongodb for data storage

## Running the App Locally with Docker Compose

#### To start the application

Step 1: start mongodb and mongo-express

    docker-compose -f docker-compose.yaml up
    
_You can access the mongo-express under localhost:8080 from your browser_
    
Step 2: in mongo-express UI - create a new database "my-db"

Step 3: in mongo-express UI - create a new collection "users" in the database "my-db"       
    
Step 4: start node server 

    npm install
    node server.js
    
Step 5: access the nodejs application from browser 

    http://localhost:3000

#### To build a docker image from the application

    docker build -t my-app:latest .       
    
The dot "." at the end of the command denotes location of the Dockerfile.

## Push code to GitHub and trigger Jenkins push to Docker Hub

Step 1: start Jenkins container
    
    docker-compose -f jenkins/jenkins.yaml up
    
Step 2: run ngrok to expose Jenkins container

    ngrok http localhost:8080

Step 3: update Jenkins webhook url with ngrok forward url

Step 4: create empty commit and push to Github should trigger Jenkins job
    

