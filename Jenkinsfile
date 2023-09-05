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
                sh 'docker build -t  $DOCKERUSER/html-css-project .'
            }
        }
        stage('Push') {
            steps {<
                sh 'docker login -u $DOCKERUSER -p $DOCKERPASS'
                sh 'docker push $DOCKERUSER/html-css-project '
            }
        }
    }
}