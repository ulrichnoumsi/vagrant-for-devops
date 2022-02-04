#!/bin/bash

sudo apt-get update
sudo apt-get install epel-release -y
sudo apt-get install libvirt qemu-kvm virt-install virt-top libguestfs-tools bridge-utils -y
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker vagrant
sudo curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start
