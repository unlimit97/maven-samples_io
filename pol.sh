#!/bin/bash
 
echo 'Running Coverity on Polaris'

polaris setup
polaris --co project.name=${polaris_projectName} analyze -w

