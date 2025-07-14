#!/bin/bash
# Install Go
sudo yum update -y
sudo yum install -y golang
# Clone your application
cd ~ # go home
git clone https://github.com/pawong/cloudformation-vpc-alb-ec2-go-example.git/
# Change directory to the application
cd cloudformation-vpc-alb-ec2-go-example/src
# Build your Go application
export GIT_HASH=$(git rev-parse --short HEAD)
export GOPATH=~/go
export GOCACHE=~/.cache/go
go build -o main main.go
# Run your Go application (you might want to set this up as a service)
./main &