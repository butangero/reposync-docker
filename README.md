# reposync-docker
Docker container to download or sync a YUM repository. Ideal for downloading RPMs when you are not running Centos/RH/Fedora. 

# Quick Start

The quickest way to get started:

```
docker run --name reposync-docker \
    --env 'REPO_ID=mesosphere' \
    --env 'REPO_RPM=http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm' \
    --volume /srv/local/dir/to/save/rpms:/rpms \
    bgulla/reposync-docker
```
