pipeline {
    agent any
    triggers {
        pollSCM('* * * * *') // Or webhook
    }
    environment {
        BRANCH = 'develop'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: "${BRANCH}", url: 'https://github.com/Dharanisree2004/testpipeline.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t dev-web-app .'
            }
        }
        stage('No Publish') {
            steps {
                echo 'Build only, not publishing in develop branch.'
            }
        }
    }
}
