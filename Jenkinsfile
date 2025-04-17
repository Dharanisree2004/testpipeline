pipeline {
    agent any
    triggers {
        pollSCM('* * * * *') 
    }
    environment {
        BRANCH = 'main'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: "${BRANCH}", url: 'https://github.com/Dharanisree2004/testpipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t web-app .'
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                docker rm -f web-container || true
                docker run -d -p 82:80 --name web-container web-app
                '''
            }
        }
    }
}
