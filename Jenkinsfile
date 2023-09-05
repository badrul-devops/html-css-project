//jenkinsfile
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/badrul-devops/html-css-project.git'
            
            }
        }
        stage('sonarqube') {
            steps {
                withSonarQubeEnv(credentialsId: 'sonar') {
                    sh 'sonar-scanner'
                   }
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