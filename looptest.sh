#!/bin/bash

#
#  loop running the test scenario until removed
#

LOOPS=100000

/opt/IBM/RationalTestControlPanel/bin/startup.sh

while [ $LOOPS -gt 0 ]
do
  /opt/IBM/RationalIntegrationTester/RunTests -noHTTP -environment ubuntu -project /root/StockTrader/StockTrader.ghp -run Suite 
  sleep 30
done
