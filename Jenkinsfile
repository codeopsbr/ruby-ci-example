pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'ls -l'
      }
    }
    stage('Tests') {
      steps {
        sleep 5
      }
    }
    stage('Aproval') {
      steps {
        input 'Você aprova para deploy?'
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo "fazendo deploy"'
      }
    }
  }
}