# Aptly scripts for creating DGX apt repos
* Aptly (https://www.aptly.info/doc/overview/)
![The schema of aptly’s commands and transitions between entities](https://www.aptly.info/img/schema.png)
mirror - mirror of remote repository, consists of metadata, list of packages and package files  
local repo - local package repository, consists of metadata, packages and files, packages can be easily added and removed  
snapshot - immutable list of packages, basic block to implement repeatability and controlled changes  
published - repository published representation of aptly generated snapshot or local repository, ready to be consumed by apt tools  

## Install Aply Packages
* ```0_aptly_install.sh```

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
## Configure Nvidia DGX OS 7 related repo sources
* ```1_aptly_config.sh```

## Pull repo mirrors 
* ```2_aptly_update.sh``` 

## Create Snapshot
* ```3_aptly_snapshot.sh```
* ``` aptly snapshot list``` to list current snapshots

## Delete current publish and publish repos from snapshots
* ```4_aptly_publish.sh```
* ``` aptly publish list``` to list existing publish
