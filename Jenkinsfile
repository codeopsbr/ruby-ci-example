pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'ls -l'
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
      }
    }
  }
}