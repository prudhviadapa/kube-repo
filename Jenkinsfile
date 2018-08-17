pipeline {
    agent any

    environment {
          
	  sh 'git rev-parse HEAD > GIT_COMMIT'
          def shortCommit = readFile('GIT_COMMIT').take(6)
          echo '$'
    }

    stages {
        stage('Build') {
            steps {
	      
                sh "docker build -t gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.shortCommit} ."
                echo 'Image build success'
		sh "docker push gcr.io/projectkube-211818/github-prudhviadapa-kube-repo:${env.shortCommit}"
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
