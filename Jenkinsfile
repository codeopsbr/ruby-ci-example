pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'pwd'
        sh 'ls -l'
      }
    }
    stage('Test') {
      steps {
        echo 'Estou testando'
      }
    }
    stage('Aprova��o') {
      steps {
        input 'Voce aprova?'
      }
    }
  }
}