pipeline {
    agent any
    
    stages {
        stage('Build and Run Server-side') {
            steps {
                dir('server-side') {
                    sh './script_in_server_side.sh'
                }
            }
        }
        
        stage('Build Client-side') {
            steps {
                dir('client-side') {
                    sh './script_in_client_side.sh'
                }
            }
        }
        
        stage('Validation') {
            steps {
                dir('validation') {
                    sh './script_in_validation.sh'
                }
            }
        }
   

