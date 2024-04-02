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
                sh "docker run -itd -p 8080:80 node-server1" 
            }
        }
    }
}
