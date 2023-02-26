#!/bin/bash
 
#first, run the appropriate command as per your project requirements
$COV_HOME/cov-capture --dir .coverity/idir --project-dir $(pwd)
 
#second, analyze the intermediate directory with analysis options of your choice
$COV_HOME/cov-analyze --dir .coverity/idir --all --webapp-security --enable-audit-mode --strip-path $(pwd)
 
#third, commit defects Coverity Connect server
$COV_HOME/cov-commit-defects --dir .coverity/idir --url ${Coverity_InstanceUrl} --user ${Coverity_Username} --password ${Coverity_Password} --stream ${Coverity_Stream}
 
 
#at last, export the results from intermediate directory to a file for Intelligent Orchestration
#to process the results ${Coverity_FilePath} is set by synopsysIO plugin for you
$COV_HOME/cov-format-errors --dir .coverity/idir --json-output-v7 ${Coverity_FilePath}
