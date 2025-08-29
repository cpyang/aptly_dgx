#!/bin/bash
time aptly mirror update -architectures="amd64" cuda-ubuntu2404-x86_64
time aptly mirror update -architectures="amd64" doca-ubuntu2404-x86_64
time aptly mirror update ubuntu-noble
time aptly mirror update ubuntu-noble-security
time aptly mirror update ubuntu-noble-updates
time aptly --ignore-signatures  mirror update dgx-noble
time aptly --ignore-signatures  mirror update dgx-noble-updates
