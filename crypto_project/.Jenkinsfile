pipeline {
   agent {
        docker {
            image 'python:3.11'
            args '-u root:root'
                }
          }
  options {
    ansiColor('xterm')
  }

  triggers {
        cron('H */4 * * 1-5')
    }
    stages {
        stage('Test') {
            steps {
                sh '''
                   pip install -r requirements.txt
                   pytest ./tests
                   '''
                 }
                    }
        stage('Generate Report') {
            steps {
                sh '''
                    allure generate -c ./allure_result -o ./allure_report
                    '''
            }
        }
    }

   post {
        always {
               sh '''
               chmod -R o+xw ./allure_report
               allure includeProperties: false, jdk: '', results: [[path: './allure_report']]
               '''
        }
    }

}