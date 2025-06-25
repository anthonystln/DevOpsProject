pipeline {
  agent any
  stages {
    stage('Clone') {
        steps {
            echo 'Repo already cloned by Jenkins.'
        }
    }
    stage('Build') {
      steps {
        sh 'docker build -t entreprise-app .'
      }
    }
    stage('Tests') {
      steps {
        sh 'chmod +x tests/test.sh && ./tests/test.sh'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
}