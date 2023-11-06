pipeline {
    agent any
    
    environment {
        // The ID of your credentials as configured in Jenkins
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'
    }
    stages {
        stage('Remove Prev Containers & Images') {
            steps {
                script {
                    sh 'docker stop $(docker ps -a -q)'
                    sh 'docker rmi -f $(docker images -aq)'
                }
            }
        }
        
        stage('Docker Compose Up') {
            steps {
                script {
                    sh "echo 'toXGv3B20n' | docker login -u 'gabrieldesir' --password-stdin"
                    sh "docker compose build"
                    sh "docker compose push"
                    sh "docker compose -f docker-compose.yml up -d"
                    
                }
            }
        }
    }
}
