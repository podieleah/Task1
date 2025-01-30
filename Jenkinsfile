pipeline {
    agent any

    stages {
        stage('Cleanup') {
            steps {
                sh './cleanup.sh'
            }
        }

        stage('Build Flask') {
            steps {
                sh './build_flask.sh'
            }
        }

        stage('Run Flask') {
            steps {
                sh './run_flask.sh'
            }
        }

        stage('Test App') {
            steps {
                sh './test_app.sh'
            }
        }
    }
}
