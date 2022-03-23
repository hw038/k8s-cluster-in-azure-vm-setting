#!/usr/bin/env bash

# install packages 
apt-get install epel-release -y
apt-get install vim-enhanced -y
apt-get install git -y

# install docker 
apt-get install docker -y && systemctl enable --now docker

# install kubernetes cluster 
apt-get install kubectl-1.22.6 kubelet-1.22.6 kubeadm-1.22.6 -y
systemctl enable --now kubelet
