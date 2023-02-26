#!/bin/bash
 
echo 'Running Black Duck'
 
#wget -O detect8.sh https://detect.synopsys.com/detect8.sh
#--detect.tools=DETECTOR
curl -o detect8.sh https://detect.synopsys.com/detect8.sh

chmod a+x detect8.sh

./detect8.sh --blackduck.url=${Blackduck_InstanceUrl} \
--blackduck.api.token=${Blackduck_AuthToken} \
--detect.project.name=${Blackduck_ProjectName} \
--detect.project.version.name=${Blackduck_ProjectVersion} \
--logging.level.com.synopsys.integration=DEBUG \
--blackduck.trust.cert=true \
--detect.detector.search.depth=5 \
--detect.detector.search.continue=true \
--detect.force.success=true DETECT_CURL_OPTS="-k" 2>&1 | tee bd_scan.log

