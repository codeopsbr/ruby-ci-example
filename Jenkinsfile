pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh ''''docker stop $(docker ps -q)'
docker build -t ruby-ci-example .'''
      }
    }
    stage('Upload to repo') {
      steps {
        sh 'hostname'
      }
    }
    stage('Tests') {
      steps {
        sh 'ruby test-app.rb'
      }
    }
    stage('Aproval') {
      steps {
        input 'Voce aprova para deploy?'
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo "fazendo deploy"'
        sh 'docker run -d -p 4567:4567 ruby-ci-example'
      }
    }
  }
}