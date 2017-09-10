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
    stage('Aprovacao') {
      steps {
        input 'Voce aprova?'
      }
    }
    stage('Deploy') {
      steps {
        sh 'make publish'
      }
    }
  }
}