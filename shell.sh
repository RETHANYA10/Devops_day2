pipeline {
    agent any  // Runs on any available Jenkins agent

    stages {
        stage('Run Shell Command') {
            steps {
                // Inline shell command
                sh '''
                    echo "Starting shell script execution..."
                    date
                    ls -l
                    echo "Shell script completed."
                '''
            }
        }
    }
}

