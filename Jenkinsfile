pipeline {
    agent any
    environment {
        IMAGE_NAME = "jenkins/jenkins:lts"   // ⚠️ overwriting the official Jenkins tag
        CONTAINER_NAME = "jenkins-container"
        HOST_PORT = "8081"   // app exposed on 8081 (Jenkins uses 8080)
    }
    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/KrishaJivani16/devops.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_NAME}:latest ."
                }
            }
        }
        stage('Deploy Container') {
            steps {
                script {
                    // Stop old container if it exists
                    sh "docker rm -f ${CONTAINER_NAME} || true"

                    // Run new container on 8081
                    sh "docker run -d --name ${CONTAINER_NAME} -p ${HOST_PORT}:80 ${IMAGE_NAME}:latest"
                }
            }
        }
    }
}
