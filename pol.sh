#!/bin/bash
 
echo 'Running Coverity on Polaris'

echo 'polaris_instanceurl'
echo ${polaris_instanceurl}
export POLARIS_SERVER_URL=${polaris_instanceurl}

echo ''
echo 'polaris_authtoken'
echo ${polaris_authtoken}
export POLARIS_ACCESS_TOKEN=${polaris_authtoken}

echo ''
echo 'polaris_projectName'
echo ${polaris_projectName}

polaris setup
polaris --co project.name=${polaris_projectName} analyze -w

