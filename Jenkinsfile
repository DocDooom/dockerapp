pipeline {
    agent any

    stages {
        stage('Docker Compose Up') {
            steps {
                script {
                    sh "docker-compose -f docker-compose.yml up -d"
                }
            }
        }
    }
}
