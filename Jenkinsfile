pipeline {
    agent any

    stages {
        
        stage('Checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sgupta8limitless/django-test']])
            }
        }
        
        stage("Build Docker Image"){
            
            steps{
                bat "docker build -t thorabh/django-test:latest ."
            }
            
        }
        
         stage("Deleting Container"){
            
            steps{
                bat "docker rm django-demo-app"
            }
            
        }
        
        stage("Build Container"){
            
            steps{
                bat "docker run --name django-demo-app -p 8001:8000 -d thorabh/django-test:latest"
            }
            
        }
        
    }
}
