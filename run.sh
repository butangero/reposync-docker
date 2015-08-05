#!/bin/bash

# Ensure that the repo id has been set
if [ -z ${REPO_ID} ]; then
  echo "[FATAL] ENV REPO_ID not set! "
  exit
fi

# If there is a repo that needs to be added to the yum.repos.d folder, install the repo-rpm before syncing.
if [ ! -z ${REPO_FILE} ]; then
  rpm -Uvh ${REPO_FILE}
fi

# CD to the proper working directory
cd /rpms 

# sync the rpms
reposync --repoid="${REPO_ID}" .
