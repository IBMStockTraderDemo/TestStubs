#!/bin/bash
#
#  Start RIT (Or comment and uncomment lines to run a test frm command line
#

JWT=$(curl -k -L -H "Authorization: Basic YWRtaW46YWRtaW4=" http://169.60.8.157:30891/looper/jwt)

echo "JWT: " $JWT
export JWT
Authorization=$JWT
export Authorization


#/opt/IBM/RationalIntegrationTester/RunTests -noHTTP -environment learn -environmentTags env -project /root/StockTrader/StockTrader.ghp -run Suite


/opt/IBM/RationalIntegrationTester/IntegrationTester ./StockTrader

