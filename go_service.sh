#!/bin/bash
wget https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz
tar -zxvf go1.12.5.linux-amd64.tar.gz -C /usr/local
echo 'export PATH=$PATH:/usr/local/go/bin' | tee -a /etc/profile
echo 'export GOROOT=/usr/local/go' | tee -a /etc/profile
echo 'export GOROOT=/usr/local/go' | tee -a /etc/profile
source /etc/profile
wget -P /src/main/  https://raw.githubusercontent.com/saicharan993/go-web-server/master/main.go
go run /src/main/main.go
