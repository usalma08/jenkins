pipeline {
    agent any
    stages {
        stage('Salma - Build Docker Image') {
            steps {
                script {
                    // Build the image with the full repository name
                    docker.build("usalma88/salma-image:${env.BUILD_ID}")
                }
            }
        }
        stage('Salma - Login to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        echo 'Logged in to Docker Hub'
                    }
                }
            }
        }
        stage('Salma - Push image to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub-credentials-id') {
                        // Push the image with the full repository name
                        docker.image("usalma88/salma-image:${env.BUILD_ID}").push()
                    }
                }
            }
        }
    }
}
