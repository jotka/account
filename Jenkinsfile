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

        stage ('Run app') {
            steps {
                sh 'mvn spring-boot:run'
            }
        }
    }
}
