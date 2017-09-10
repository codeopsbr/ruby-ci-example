pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t ruby-ci-example .'
      }
    }
    stage('Upload to repo') {
      steps {
        sh 'hostname'
      }
    }
    stage('Tests') {
      steps {
        sleep 5
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