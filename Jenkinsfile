pipeline {  
    environment {
         imagename = "portfoliotest"
     }

    agent any
    stages {
       stage('Build') { 
            steps {
                sh '. /loginIks.sh && docker build -t $imagename .'
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