pipeline {
    agent any
    
    stages {
        stage('repo clean up'){
            steps {
                step([$class: 'WsCleanup'])
            }
        }

        stage('build') {
            steps {
                ./gradlew build
            }
        }

        stage('Test') {
            steps{
                ./gradlew test
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
