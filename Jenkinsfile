pipeline {
    agent any
    environment {
        IMAGE_NAME = 'greater-app'
        CONTAINER_NAME = 'greater-container'
    }
    stages {
        stage('Checkout') {
            steps { checkout scm }
        }
        stage('Build Image') {
            steps { sh 'docker build -t $IMAGE_NAME:${BUILD_NUMBER} -t $IMAGE_NAME:latest .' }
        }
        stage('Run Container') {
            steps {
                sh 'docker rm -f $CONTAINER_NAME || true'
                sh 'docker run --name $CONTAINER_NAME $IMAGE_NAME:latest'
            }
        }
    }
}
