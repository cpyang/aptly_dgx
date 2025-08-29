#!/bin/bash
#
# Standard Canonical package repositories:
#
aptly mirror create -architectures="amd64,i386" ubuntu-noble \
    http://archive.ubuntu.com/ubuntu/ noble main multiverse universe restricted

aptly mirror create -architectures="amd64,i386" ubuntu-noble-updates \
    http://archive.ubuntu.com/ubuntu/ noble-updates main multiverse universe restricted

aptly mirror create -architectures="amd64,i386" ubuntu-noble-security \
    http://security.ubuntu.com/ubuntu noble-security main multiverse universe restricted

#
# CUDA specific repositories:
# Note: The component for this repository is specified as "/"
# The architecture is x86_64, which is equivalent to amd64 for aptly.
# 
aptly mirror create -architectures="amd64" cuda-ubuntu2404-x86_64 \
    https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/ /

aptly mirror edit  -architectures="amd64" \
    -archive-url="https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/" \
    cuda-ubuntu2404-x86_64

aptly mirror create -architectures="amd64" doca-ubuntu2404-x86_64 \
    https://linux.mellanox.com/public/repo/doca/3.0.0/ubuntu24.04/x86_64/ /

aptly mirror edit  -architectures="amd64" \
    -archive-url="https://linux.mellanox.com/public/repo/doca/3.0.0/ubuntu24.04/x86_64" \ 
    doca-ubuntu2404-x86_64

#
# DGX specific repositories
#
aptly mirror create -architectures="amd64" dgx-noble \
    http://repo.download.nvidia.com/baseos/ubuntu/noble/x86_64/ noble common dgx

aptly mirror create -architectures="amd64" dgx-noble-updates \
    http://repo.download.nvidia.com/baseos/ubuntu/noble/x86_64/ noble-updates common dgx

echo "Aptly mirrors created. Run 'aptly mirror list' to see them."
echo "Next, you'll likely want to update your mirrors using 'aptly mirror update <mirror_name>'"
echo "And then create snapshots and publish them."
#
# apt-mirror 
# 
# Standard Canonical package repositories:
# deb http://security.ubuntu.com/ubuntu noble-security main multiverse universe restricted
# deb http://archive.ubuntu.com/ubuntu/ noble main multiverse universe restricted
# deb http://archive.ubuntu.com/ubuntu/ noble-updates main multiverse universe restricted
#
# deb-i386 http://security.ubuntu.com/ubuntu noble-security main multiverse universe restricted
# deb-i386 http://archive.ubuntu.com/ubuntu/ noble main multiverse universe restricted
# deb-i386 http://archive.ubuntu.com/ubuntu/ noble-updates main multiverse universe restricted
#
# CUDA specific repositories:
# deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/ /
#
# DGX specific repositories:
# deb http://repo.download.nvidia.com/baseos/ubuntu/noble/x86_64/ noble common dgx
# deb http://repo.download.nvidia.com/baseos/ubuntu/noble/x86_64/ noble-updates common dgx
#
# deb-i386 http://repo.download.nvidia.com/baseos/ubuntu/noble/x86_64/ noble common dgx
# deb-i386 http://repo.download.nvidia.com/baseos/ubuntu/noble/x86_64/ noble-updates common dgx
#
# Clean unused items
#clean http://archive.ubuntu.com/ubuntu
#clean http://security.ubuntu.com/ubuntu
############# end config ##############
