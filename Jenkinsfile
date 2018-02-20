pipeline {
  agent any
  stages {
    stage('Pre-build') {
      steps {
        sh 'pwd'
        fileExists 'Gemfile'
      }
    }
    stage('Build') {
      steps {
        sh 'pwd'
        sh 'ls -l'
        sh 'bundle install'
      }
    }
    stage('Test') {
      steps {
        echo 'Estou testando'
      }
    }
    stage('Aprovação') {
      steps {
        input 'Voce aprova?'
      }
    }
    stage('Publish') {
      steps {
        sh 'echo "publicando no registry"'
      }
    }
  }
}