pipeline {
    agent any
    
    stages {
        stage('build') {
            steps {
                sh './gradlew build'
            }
        }

        stage('Test') {
            steps{
                sh './gradlew test'
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
