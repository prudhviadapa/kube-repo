pipeline {
    agent any

  node {
      checkout scm
 
      sh 'git rev-parse HEAD > GIT_COMMIT'
      def shortCommit = readFile('GIT_COMMIT').take(6)
      def image = docker.build(gcr.io/projectkube-211818/github-prudhviadapa-kube-repo-${shortCommit})")
 
   stage 'Build'
   image.push()
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
