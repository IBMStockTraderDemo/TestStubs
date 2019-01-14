FROM stocktraderdemo/testbase

ENV DISPLAY ""

RUN apt-get update
RUN apt-get install curl -y

COPY ST.tar /root/ST.tar
COPY looptest.sh /root/looptest.sh
RUN  cd /root &&  tar -xvf ST.tar

CMD  "sh" "/root/looptest.sh"
