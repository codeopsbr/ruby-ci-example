pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'fpm -m "Ops Team, <ops-team@firma.org>" --url "http://firma.org" --description "Nossa app teste" -a noarch -s dir -t rpm -n my-app --rpm-user root --rpm-group root -v 0.0.1 --prefix /opt/my-app .'
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