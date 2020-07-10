pipeline {
    agent any
    tools {
        maven 'lOCALmAVEN'
        jdk 'LocalJDK8'
    }
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f java-tomcat-sample/pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Create Tomcat Docker Image'){
            steps {
                sh 'docker build ./java-tomcat-sample-docker -t tomcatsamplewebapp:${env.BUILD_ID}'
            }
        }
    }
}