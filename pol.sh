#!/bin/bash
 
echo 'Running Coverity on Polaris'

echo 'polaris_instanceurl'
echo ${polaris_instanceUrl}
export POLARIS_SERVER_URL=${polaris_instanceUrl}

echo ''
echo 'polaris_authtoken'
echo ${polaris_authToken}
export POLARIS_ACCESS_TOKEN=${polaris_authToken}

echo ''
echo 'polaris_projectName'
echo ${polaris_projectName}

echo ''
echo 'polaris_cliBinaryPath'
echo ${polaris_cliBinaryPath}

echo ''
echo 'polaris_branchName'
echo ${polaris_branchName}

#polaris setup
#polaris --co project.name=${polaris_projectName} analyze -w
${polaris_cliBinaryPath} --co project.name=${polaris_projectName} --co project.branch=${polaris_branchName} analyze -w
#${polaris_cliBinaryPath} --co project.name=${polaris_projectName} analyze -w

