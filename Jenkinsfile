pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
	        
                def a=$(git log -1 --pretty=format:%h)
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:$a ."
                echo 'Image build success'
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:$a"
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
