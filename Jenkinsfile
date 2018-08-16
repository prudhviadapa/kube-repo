pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build . -t jf:${GIT_COMMIT,length=6}"
                echo 'BUILDED IMAGE SUCCESSFULLY USING DOCKER FILE'
	   }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
