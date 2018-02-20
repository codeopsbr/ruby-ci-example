pipeline {
  agent any
  stages {
    stage('Pre-build') {
      steps {
        fileExists 'Gemfile'
        fileExists 'Dockerfile'
        sh 'docker info'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t codeopsbr/ruby-ci-example .'
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