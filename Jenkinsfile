pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'my-node-app'
        DOCKERFILE_PATH = './Dockerfile'
    }

    stages {
        stage('Checkout') {
            steps {
                
                git url: 'https://github.com/safuvanh/Devops_Geogit', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                
                sh "docker build -t ${DOCKER_IMAGE} -f ${DOCKERFILE_PATH} ."
            }
        }

        stage('Run Docker Container') {
            steps {
                
                sh "docker run -d -p 3005:3005 --name ${DOCKER_IMAGE} ${DOCKER_IMAGE}"
            }
         }
      }
   }
