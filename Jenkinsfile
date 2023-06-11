pipeline {
    agent { 
        node {
            label 'Linuxagent'
            }
      }
      triggers{
        pollSCM '* * * * *'
      }
    stages {
        stage('DeployDocker') {
            steps {
                echo "Building.."
                sh '''
                echo "doing build stuff.."
                '''
                sh 'echo "Admin12" | sudo -S chmod +rwx docker.sh'
                sh 'echo "Admin12" | sudo -S ./docker.sh'
            }
        }
        stage('DeployGitTea') {
            steps {
                sh "echo 'Admin12' | sudo -S docker-compose up -d"
            }
        }
    }
}
