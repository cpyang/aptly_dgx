#!/bin/bash
if [ "$#" -eq 0 ]
then
    echo $0 '<tag>' >&2
    aptly publish list
    exit 1
fi
#
# Drop existing publish
#
aptly publish drop noble cuda
aptly publish drop noble doca
aptly publish drop noble ubuntu
aptly publish drop noble-updates ubuntu
aptly publish drop noble-security ubuntu
#aptly publish tag <name> [[<endpoint>:]<prefix>]
# 
# Publish
#
time aptly publish tag -distribution="noble" cuda-noble-$tag cuda
time aptly publish tag -distribution="noble" doca-noble-$tag doca
time aptly publish tag -distribution="noble" ubuntu-noble-$tag ubuntu
time aptly publish tag -distribution="noble-updates" ubuntu-noble-updates-$tag ubuntu
time aptly publish tag -distribution="noble-security" ubuntu-noble-security-$tag ubuntu
time aptly publish tag -distribution="noble" dgx-noble-$tag dgx
time aptly publish tag -distribution="noble-updates" dgx-noble-updates-$tag dgx


