pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                echo 'Starting web server...'
                sh '''
                cd "$WORKSPACE"
                nohup python3 -m http.server 8000 &
                '''
            }
        }
    }
}
