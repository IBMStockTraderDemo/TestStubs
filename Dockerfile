FROM stocktraderdemo/testbase

ENV DISPLAY ""

COPY StockTrader.tar /root/StockTrader.tar
COPY looptest.sh /root/looptest.sh
RUN  cd /root &&  tar -xvf StockTrader.tar

CMD  "sh" "/root/looptest.sh"
