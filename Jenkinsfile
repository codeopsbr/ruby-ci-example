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
        sh 'docker run -d -p 4567:4567 codeopsbr/ruby-ci-example'
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