pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh "docker build -t node-server1 ." 
            }
        }
        stage('Deploy') { 
            steps {
                sh "docker run -itd -p 80:8080 node-server1" 
            }
        }
    }
}
