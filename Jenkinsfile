pipeline {
    agent any
    
    environment {
        // login to docker
        DOCKER_CREDENTIALS_ID = 'docker-hub-credentials'
    }
    stages {
        // Remove previous images
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
                    withCredentials([usernamePassword(credentialsId: "${env.DOCKER_CREDENTIALS_ID}", usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
                    }
                    sh "docker compose build"
                    sh "docker compose push"
                    sh "docker compose -f docker-compose.yml up -d"
                    
                }
            }
        }
    }
}
