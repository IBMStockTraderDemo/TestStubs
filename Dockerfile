FROM us.icr.io/kacz/testbase

ENV DISPLAY ""

RUN apt-get update
RUN apt-get install curl -y

COPY StockTrader /root/StockTrader
COPY looptest.sh /root/looptest.sh
RUN  cd /root 

CMD  "sh" "/root/looptest.sh"
