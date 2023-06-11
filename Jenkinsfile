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
                sh "echo 'Admin12' | sudo -S curl -sSL https://get.docker.com/ | CHANNEL=stable sh"

                sh "echo 'Admin12' | sudo -S curl -sSL https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose"


                sh "echo 'Admin12' | sudo -S systemctl enable --now docker"


                sh "echo 'Admin12' | sudo -S curl -sSL https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose"


                sh "echo 'Admin12' | sudo -S chmod +x /usr/local/bin/docker-compose"
            }
        }
        stage('DeployGitTea') {
            steps {
                sh "echo 'Admin12' | sudo -S docker-compose up -d"
            }
        }
    }
}
