pipeline {
    agent any

    environment {
        GITHUB_CRED = credentials('github-creds')
    }

    stages {
        stage('Checkout Project') {
            steps {
                git branch: 'master',
                    credentialsId: 'github-creds',
                    url: 'https://github.com/chabirahamza25-code/my-project1.git'
            }
        }

        stage('Build & Deploy') {
            steps {
                sh 'docker compose down'
                sh 'docker compose up -d'
            }
        }
    }
}
