pipeline{
    agent any
    environment {
        MYSQL_ROOT_PASSWORD = credentials("MYSQL_ROOT_PASSWORD)
    }
    stages{
        stage("Make scripts executable"){
            steps{
                sh 'chmod +x ./scripts/*'
            }
        }
        
        stage("Docker Setup"){
            steps{
                sh './scripts/before-installation.sh'
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
