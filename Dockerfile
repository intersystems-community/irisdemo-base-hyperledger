FROM gradle:6.7.0-jdk11

LABEL maintainer="Phillip Booth <phillip.booth@intersystems.com>"

RUN apt-get update && apt-get install -y \
curl

WORKDIR /hyperledger

#Download Hyperledger Binaries into container
RUN curl -sSL https://bit.ly/2ysbOFE | bash -s -- 2.2.1 1.4.9

ADD test-network /hyperledger/fabric-samples/test-network
ADD ./chaincodes/mortgage-reporting-cc /hyperledger/fabric-samples/mortgage-reporting-cc

WORKDIR /hyperledger/fabric-samples/test-network/

ENTRYPOINT ["/hyperledger/fabric-samples/test-network/network-controller.sh"]
