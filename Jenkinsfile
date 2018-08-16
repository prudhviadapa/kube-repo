pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.GIT_COMMIT} ."
                echo 'Image build success'
		echo ${env.GIT_COMMIT}
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.GIT_COMMIT}"
		echo 'Pushed to gcr successfully but tagging to the same image'
		echo ${env.GIT_REVISION}
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
