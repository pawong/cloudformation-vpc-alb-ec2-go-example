#!/bin/bash

# Install Go
sudo yum update -y
sudo yum install -y golang

# Build your Go application
export GIT_HASH=$(git rev-parse --short HEAD)
export GOPATH=~/go
export GOCACHE=~/.cache/go
go build -o main main.go

# Run your Go application (you might want to set this up as a service)
./main &