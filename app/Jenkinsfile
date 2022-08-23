pipeline {
    agent any
    
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-cred-jim')
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t meeej/my-app:latest .'
            }
        }
        stage('Log into DockerHub') {
            steps {
                sh 'docker login -u $DOCKERHUB_CREDENTIALS_USR -p DOCKERHUB_CREDENTIALS_PSW'
            }
        }
        stage('Push Image to DockerHub') {
            steps {
                sh 'docker push meeej/my-app:latest'
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}