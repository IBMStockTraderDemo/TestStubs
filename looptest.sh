#!/bin/bash

#
#  loop running the test scenario until removed
#

LOOPS=100000

/opt/IBM/RationalTestControlPanel/bin/startup.sh

while [ $LOOPS -gt 0 ]
do
  JWT=$(curl -k -L -H "Authorization: Basic YWRtaW46YWRtaW4=" https://looper-service:9443/looper/jwt)

  echo "JWT: " $JWT

  export JWT

  /opt/IBM/RationalIntegrationTester/RunTests -noHTTP -environment IKS -environmentTags JWT -project /root/StockTrader/StockTrader.ghp -run Suite 
  sleep 30
done
