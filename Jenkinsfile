#!groovy

pipeline {
  agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:3.5.0'
        }
      }
      steps {
      	sh 'mvn --version'
      	
      	git branch: 'master',
            url: 'https://github.com/openkubeio/sample-spingboot-jar-rest.git'
            
        sh "ls -lat"
        
        // sh "mvn clean install"
        sh "mvn clean package"

      }

    }
    stage('Docker Build') {
    	agent any
      steps {
        sh "docker --version"
      	sh "docker build . -t pramodepandit/myrestapp:v1"
      	sh "docker login -u ${DOCKER_USER} -p ${DOCKER_PSWD}"
      	sh "docker push pramodepandit/myrestapp:v1"
      }
    }
  }
}
