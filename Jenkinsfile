pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'make'
      }
    }
    stage('Test') {
      steps {
        sh 'make test'
      }
    }
    stage('Deploy') {
      steps {
        sh 'make publish'
      }
    }
    stage('approval') {
      steps {
        input 'Voce aprova?'
      }
    }
  }
}