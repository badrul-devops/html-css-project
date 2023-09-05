//jenkinsfile
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/badrul-devops/html-css-project.git']])
            
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t badrul11/html-css-project .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker push badrul11/html-css-project'
            }
        }
    }
}