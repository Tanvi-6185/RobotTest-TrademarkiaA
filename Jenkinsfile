pipeline {
    agent any

    environment {
        // Activate virtual environment if needed or keep Python scoped
        ROBOT_OPTIONS = ''
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Tanvi-6185/RobotTest-TrademarkiaA.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh '''
                    python3 -m pip install --upgrade pip
                    pip install robotframework
                    pip install robotframework-seleniumlibrary
                    pip install robotframework-browser
                    rfbrowser init
                '''
            }
        }

        stage('Run Robot Framework Tests') {
            steps {
                sh 'robot .'
            }
        }

        stage('Archive Test Reports') {
            steps {
                archiveArtifacts artifacts: '*.html,*.xml', fingerprint: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Tests executed successfully!'
        }
        failure {
            echo 'Tests failed. Check reports for details.'
        }
    }
}
