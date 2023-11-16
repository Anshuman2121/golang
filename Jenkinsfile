pipeline {
    agent {
        label "test2"
    }

    stages {
        stage('Grype Scan') {
            steps {
                script {
                    container('ubuntu') {
                        sh "echo hellohello"
                        sh "ls -lart"
                    }
                }
            }
        }
    }
}
