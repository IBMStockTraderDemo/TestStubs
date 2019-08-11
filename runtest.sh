#!/bin/bash

#
#  loop running the test scenario until removed
#

LOOPS=100000

/opt/IBM/RationalTestControlPanel/bin/startup.sh

echo "Working Directory is " $WORKDIR 

while [ $LOOPS -gt 0 ]
do
  export DISPLAY=
  /opt/IBM/RationalIntegrationTester/RunTests -noHTTP -environment IKS -environmentTags env -project $WORKDIR/StockTrader/StockTrader.ghp -run Suite 
  sleep 10
done
