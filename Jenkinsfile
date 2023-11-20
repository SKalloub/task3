pipeline {
    agent any
    
    stages {
        stage('Build and Run Server-side') {
            steps {
                dir('server-side') {
                    sh './runScript.sh'
                }
            }
        }
        
        stage('Build Client-side') {
            steps {
                dir('client-side') {
                    sh './runScript.sh'
                }
            }
        }
        
        stage('Validation') {
            steps {
                dir('validation') {
                    sh './validate.sh'
                }
            }
        }
        stage ('Pushing To Docker Hub') {
               steps {
               sh 'docker login --username sk1412 --password CodeNameSherry4869@' 
               sh 'docker push sk1412/client-side sk1412/client-side'
               sh 'docker push sk1412/server-side sk1412/server-side'     
               }
               }
   }
}
