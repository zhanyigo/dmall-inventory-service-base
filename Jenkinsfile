pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh './gradlew build'
            }
        }

        stage('Unit Test') {
            steps{
                sh './gradlew test'
            }
        }
        
        stage('Build docker image') {
            steps {
                sh 'docker build'
            }
        }
        
        stage('DeployToST') {
            steps {
                echo 'ST deployed.'
            }
        }
        
        stage('DeployToUAT') {
            steps {
                echo 'UAT deployed'
            }
        }
    }
}
