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
   }
}
