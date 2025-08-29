# Aptly scripts for creating DGX apt repos

## Install Aply Packages
0_aptly_install.sh 

## .aptly.conf
* On Linux, please copy .aptly.conf to $HOME  
* 'rootDir' should be created on filesystems that support hard links.
``` json
{
  "rootDir": "/mirror",
  "downloadConcurrency": 4,
  "downloadSpeedLimit": 0,
  "downloadRetries": 0,
  "downloader": "default",
  "databaseOpenAttempts": -1,
  "architectures": [],
  "dependencyFollowSuggests": false,
  "dependencyFollowRecommends": false,
  "dependencyFollowAllVariants": false,
  "dependencyFollowSource": false,
  "dependencyVerboseResolve": false,
  "gpgDisableSign": true,
  "gpgDisableVerify": false,
  "gpgProvider": "gpg",
  "downloadSourcePackages": false,
  "skipLegacyPool": true,
  "ppaDistributorID": "ubuntu",
  "ppaCodename": "",
  "skipContentsPublishing": false,
  "skipBz2Publishing": false,
  "FileSystemPublishEndpoints": {},
  "S3PublishEndpoints": {},
  "SwiftPublishEndpoints": {},
  "AzurePublishEndpoints": {},
  "AsyncAPI": false,
  "enableMetricsEndpoint": false
}
```
## Configure Nvidia DGX OS 7 related repos
1_aptly_config.sh

## Pull repo mirrors 
2_aptly_update.sh 

## Create Snapshot
3_aptly_snapshot.sh

## Publish repos from snapshots
4_aptly_publish.sh
