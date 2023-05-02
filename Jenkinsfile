pipeline {
    agent any
    
   stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/saba989/JenkinsPipeline.git']]])
                bat 'mvn clean install'
            }
            
}
   stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t sava123/jenkins .'
                }
            }
        }
}
}
