pipeline {
  agent any
  stages {
    tage('Pre-build') {
      steps {
        sh 'pwd'
      }
    }
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
