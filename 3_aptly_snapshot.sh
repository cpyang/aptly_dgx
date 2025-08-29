#!/bin/bash
#aptly mirror list -raw | xargs -n 1 aptly snapshot create
if [ "$#" -eq 0 ]
then
    echo $0 '<tag>' >&2
    aptly snapshot list
    exit 1
fi
#tag=$(date +%Y%m%d)
time aptly snapshot create cuda-noble-$tag from mirror cuda-ubuntu2404-x86_64
time aptly snapshot create doca-noble-$tag from mirror doca-ubuntu2404-x86_64
time aptly snapshot create dgx-noble-$tag from mirror dgx-noble
time aptly snapshot create dgx-noble-updates-$tag from mirror dgx-noble-updates
time aptly snapshot create ubuntu-noble-$tag from mirror ubuntu-noble
time aptly snapshot create ubuntu-noble-security-$tag from mirror ubuntu-noble-security
time aptly snapshot create ubuntu-noble-updates-$tag from mirror ubuntu-noble-updates
