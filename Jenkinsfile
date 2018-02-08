pipeline {
    agent any
    stages {
        
        stage('Unit Test') {
            steps{
                sh './gradlew test'
                sh './gradlew sonarqube'
            }
        }

        stage('build') {
            steps {
                sh './gradlew build'
            }
        }
        
        stage('Build docker image') {
            steps {
                sh 'sh genImages.sh'
            }
        }
        
        stage('Deploy to DEV') {
            steps {
                withCredentials([[$class: 'FileBinding', credentialsId: 'kubectl-config-file', variable: 'KUBECTL_CONFIG_FILE']]) {
                    sh './deployToDEV.sh'
                }
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
