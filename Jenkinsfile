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
        sh 'ruby test-app.rb'
        sh 'docker run -d -p 4567:4567 codeopsbr/ruby-ci-example'
      }
    }
    stage('Aprovação') {
      steps {
        input 'Voce aprova?'
      }
    }
    stage('Clean up') {
      steps {
        sh 'docker stop $(docker ps -q)'
      }
    }
    stage('Publish') {
      steps {
        echo 'Realizando o publish da imagem'
      }
    }
  }
}