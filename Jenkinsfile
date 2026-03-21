// Jenkinsfile - minimal run
pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    stage('Run') {
      steps {
        sh '''
          set -eux
          python3 -V
          python3 main.py   # change to your entry file
        '''
      }
    }
  }
}
