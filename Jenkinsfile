pipeline {
    agent any
    stages {
        stage('Build') {
            steps {	      
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:$(git log -1 --format=%h) ."
                echo 'Image build success'
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:$(git log -1 --format=%h)  "
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
