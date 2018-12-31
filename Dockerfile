from stocktraderdemo/testbase

ENV DISPLAY ""

COPY StockTrader.tar /root/StockTrader.tar
RUN  cd /root &&  tar -xvf StockTrader.tar

CMD  "sh" "/opt/IBM/RationalTestControlPanel/bin/startup.sh" && \ 
     "/opt/IBM/RationalIntegrationTester/RunTests" "-noHTTP" "-environment" "ubuntu" "-project" "/root/StockTrader/StockTrader.ghp" "-run" "Suite" 