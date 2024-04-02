pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh "sudo docker build -t node-server1" 
            }
        }
        stage('Deploy') { 
            steps {
                sh "sudo docker run -itd -p 80:80 node-server1" 
            }
        }
    }
}
