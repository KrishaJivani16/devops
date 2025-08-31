pipeline {
    agent any 

    stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test' 
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                // This is a placeholder. A real deployment would push to a server, etc.
                sh 'echo "Deployment successful!"'
            }
        }
    }
}
