FROM node:8.11.2

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y python m4 make gcc g++ wget ca-certificates \
    && cd / \
    && wget https://github.com/little-brother/cicada/archive/master.tar.gz \
    && tar xzvf master.tar.gz \
    && rm master.tar.gz \
    && mv cicada-master cicada \
    && cd cicada \
    && npm i
    
COPY config.m4 /cicada/
COPY start.sh /cicada/

RUN chmod +X /cicada
RUN chmod +x /cicada/start.sh

EXPOSE 5000
EXPOSE 5001

CMD ["/bin/sh", "/cicada/start.sh"]

