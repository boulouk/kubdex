FROM store/oracle/serverjre:8

RUN mkdir /opt/firedex

ADD ./build /opt/firedex/
COPY scripts/start_firedex.sh /opt/firedex/
#ADD static/subscriber/subscriber_configurations /opt/firedex/subscriber_configurations

WORKDIR /opt/firedex

EXPOSE 1883 20000 10000-11000 

CMD ["bash", "./start_firedex.sh"]
