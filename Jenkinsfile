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
                sh './gradlew sonarqube'
            }
        }
        
        stage('Build docker image') {
            steps {
                sh 'sh genImage.sh'
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
