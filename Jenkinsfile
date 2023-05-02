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
       stage('Deploy docker'){
           steps{
                  echo "Docker Image Tag Name: ${dockerImageTag}"
                 
                  bat "docker run --name springboot-deploy -d -p 8081:8081 springboot-deploy:${env.BUILD_NUMBER}"
          }
       }

}
}
