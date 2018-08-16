pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
	        sh 'git rev-parse HEAD > GIT_COMMIT'
                def shortCommit = readFile('GIT_COMMIT').take(6)
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${shortCommit} ."
                echo 'Image build success'
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${shortCommit}"
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
