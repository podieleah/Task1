pipeline {
    agent any // Or specify a specific agent if needed

    stages {
        stage('Cleanup') {
            steps {
                sh './cleanup.sh'
            }
        }

        stage('Build MySQL') {
            steps {
                sh './build_mysql.sh'
            }
        }

        stage('Build Flask') {
            steps {
                sh './build_flask.sh'
            }
        }

        stage('Run MySQL') {
            steps {
                sh './run_mysql.sh'
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
