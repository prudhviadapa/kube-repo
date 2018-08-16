pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t prudhviadapa/rambo:${env.BUILD_ID} ."
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
