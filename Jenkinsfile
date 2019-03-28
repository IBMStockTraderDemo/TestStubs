pipeline {  
    environment {
         imagename = "portfoliotest"
     }

    agent any
    stages {
       stage('Build') { 
            steps {
                script {
                    . /loginIks.sh
                    docker.build imagename
                }
            }
       }  
       stage('Deliver') {
            steps{ 
                sh '/push2iksRegistry.sh $imagename'
            }
       }
       stage('Deploy') {
            steps{ 
                sh '/push2iks.sh stock-trader portfolio-test deploy.yaml'
            }
       }
    }
}