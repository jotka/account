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
        stage ('Performance graphs') {
            steps {
                perfReport compareBuildPrevious: true, filterRegex: '', sourceDataFiles: '**/*.csv'
            }
        }


    }
}
