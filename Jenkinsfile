pipeline {
    agent any

    stages {
        stage('Docker Compose Up') {
            steps {
                script {
                    sh 'docker stop $(docker ps -a -q)'
                    sh 'docker rmi -f $(docker images -aq)'
                    sh "echo 'toXGv3B20n' | docker login -u 'gabrieldesir' --password-stdin"
                    sh "docker compose build"
                    sh "docker compose push"
                    sh "docker compose -f docker-compose.yml up -d"
                    
                }
            }
        }
    }
}
