pipeline {
    agent { 
        node {
            label 'Linuxagent'
            }
      }
    stages {
        stage('DeployDocker') {
            steps {
                echo "Building.."
                sh '''
                echo "doing build stuff.."
                '''
                echo 'Admin12' | sudo -S curl -sSL https://get.docker.com/ | CHANNEL=stable sh

                echo 'Admin12' | sudo -S curl -sSL https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose


                echo 'Admin12' | sudo -S systemctl enable --now docker


                echo 'Admin12' | sudo -S curl -sSL https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose


                echo 'Admin12' | sudo -S chmod +x /usr/local/bin/docker-compose
            }
        }
        stage('DeployGitTea') {
            steps {
                docker-compose up -d
            }
        }
    }
}
