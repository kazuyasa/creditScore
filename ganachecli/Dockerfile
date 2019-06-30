FROM node:8-alpine
 
RUN npm install -g ganache-cli
RUN mkdir -p /var/ganache
 
ENV DOCKER true
ENV DATADIR /var/ganache
ENV MNEMONIC sample hackathon block
ENV NETWORKID 5777
 
EXPOSE 8545
 
ENTRYPOINT ["sh", "-c", "ganache-cli --host=0.0.0.0 --db=${DATADIR} --mnemonic=\"${MNEMONIC}\" --networkId=${NETWORKID}"]