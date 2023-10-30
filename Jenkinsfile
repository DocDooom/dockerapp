pipeline {
    agent any
    stages{
        stage('Test') {
            steps {
                sh 'pwd'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t dockerapp_flask .'
                sh 'docker run -d -p 5000:5000 dockerapp_flask'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Reached Deploy stage"'
            }
        }
    }
}
