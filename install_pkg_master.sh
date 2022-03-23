#!/usr/bin/env bash

# install packages 
yum install epel-release -y
yum install vim-enhanced -y
yum install git -y

# install docker 
yum install docker -y && systemctl enable --now docker

# install kubernetes cluster 
yum install kubectl-1.22.6 kubelet-1.22.6 kubeadm-1.22.6 -y
systemctl enable --now kubelet

# git clone _Book_k8sInfra.git 
git clone https://github.com/sysnet4admin/_Book_k8sInfra.git
mv /home/vagrant/_Book_k8sInfra $HOME
find $HOME/_Book_k8sInfra/ -regex ".*\.\(sh\)" -exec chmod 700 {} \;
