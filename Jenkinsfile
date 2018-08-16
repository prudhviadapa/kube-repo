pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.GIT_COMMIT} ."
                echo 'Image build success'
		echo ${GIT_COMMIT}
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.GIT_REVISION,length=6}"
		echo 'Pushed to gcr successfully but tagging to the same image'
		echo ${GIT_REVISION}
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
