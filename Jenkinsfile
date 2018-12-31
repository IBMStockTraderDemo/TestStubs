pipeline {  
    environment {
         imagename = "portfoliotest"
     }

    agent any
    stages {
       stage('Build') { 
            steps {
                script {
                    docker.build imagename
                }
            }
       }  
       stage('Deliver') {
            steps{ 
                sh '/push2dockerhub.sh $imagename'
            }
       }
    }
}