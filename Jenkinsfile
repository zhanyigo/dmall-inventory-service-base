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
                var DMALL_DOCKER_REGISTRY="ec2-54-95-48-23.ap-northeast-1.compute.amazonaws.com:5000"
                var SLUG='zhanyi'
                sh 'sudo docker build -t $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:$BUILD_NUMBER .'
                sh 'sudo docker tag $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:$BUILD_NUMBER $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:latest'

                sh 'sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:$BUILD_NUMBER'
                sh 'sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/inventory-service:latest'
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
