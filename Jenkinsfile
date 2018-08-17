pipeline {
    agent any}

    stages {
        stage('Build') {
            steps {
	        GIT_REVISION = sh( script: 'git rev-parse HEAD', returnStdout: true )	      
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${GIT_REVISION} ."
                echo 'Image build success'
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${GIT_REVISION}"
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
