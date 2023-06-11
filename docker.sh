curl -sSL https://get.docker.com/ | CHANNEL=stable sh

curl -sSL https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose


systemctl enable --now docker


curl -sSL https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose


chmod +x /usr/local/bin/docker-compose
