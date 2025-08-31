pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Deploying the static HTML file...'
                // Command to copy the file to a web server directory
                sh 'cp index.html /var/www/html/' 
            }
        }
    }
}
