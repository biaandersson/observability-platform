#!/bin/bash
sudo hostnamectl set-hostname "${new_hostname}" &&
  sudo apt-get install -y apt-transport-https software-properties-common wget &&
  wget -q https://packages.grafana.com/gpg.key -O- | sudo apt-key add - &&
  echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list &&
  sudo apt-get -y update &&
  sudo apt-get -y install grafana &&
  sudo systemctl daemon-reload &&
  sudo systemctl start grafana-server &&
  sudo systemctl enable grafana-server.service
