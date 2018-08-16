pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.GIT_COMMIT} ."
                echo 'Image build success'
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.GIT_COMMIT,length=6}"
		echo 'Pushed to gcr successfully but tagging to the same image'
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
