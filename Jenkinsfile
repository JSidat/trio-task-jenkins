pipeline{
    agent any
    environment {
        DOCKER_HUB_LOGIN=${DOCKER_HUB_LOGIN}
    }
    stages{
        stage("Make scripts executable"){
            steps{
                sh 'chmod +x ./scripts/*'
            }
        }
        
        stage("Docker Setup"){
            steps{
                sh 'bash ./scripts/before-installation.sh'
                sh './scripts/docker.sh'
            }
        }
        stage("Deploy"){
            steps{
                sh './scripts/deploy.sh'
            }
        }
    }
}