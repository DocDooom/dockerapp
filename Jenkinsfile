pipeline {
    agent any

    stages {
        stage('Docker Compose Up') {
            steps {
                script {
                    sh "sudo docker compose -f docker-compose.yml up -d"
                }
            }
        }
    }
}
