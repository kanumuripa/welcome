pipeline {
    agent any
        
    stages {
        stage('Build') {
            steps {
                sh '/usr/share/maven/bin/mvn clean compile package'
            }
        }

    }
}
