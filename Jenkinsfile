pipeline {
  agent any

  environment {
    DOCKER_IMAGE = "myapp"
  }

  stages {
    stage('Checkout Code') {
      steps {
        git 'https://github.com/<your-username>/devops-cicd-aws-kubernetes.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t $DOCKER_IMAGE .'
      }
    }

    stage('Push Docker Image') {
      steps {
        sh 'echo "Push to DockerHub (configure credentials)"'
      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        sh 'kubectl apply -f k8s/'
      }
    }
  }

  post {
    success {
      echo 'Deployment Successful!'
    }
    failure {
      echo 'Pipeline Failed!'
    }
  }
}
