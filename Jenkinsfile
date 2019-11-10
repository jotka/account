pipeline {
    agent any
    tools { 
        maven 'maven' 
        jdk 'jdk8' 
    }
    stages {
        stage ('checkout') {
            steps {
                checkout scm
            }
        }
        stage ('Build') {
            steps {
                echo 'Building...'
                sh 'mvn clean install'
            }
        }

        stage ('Build image') {
            steps {
                sh 'docker build . -t account'
            }
        }
        stage ('Run container') {
            steps {
                sh 'docker run --name account -p 8585:8585 account'
            }
        }

        stage ('Stop container') {
            steps {
                sh 'docker stop account'
                sh 'docker rm account'
            }
        }
    }
}
