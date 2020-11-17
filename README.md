# irisdemo-base-hyperledger



Container for interacting with the Hyperledger Test Network. The container comes preinstalled with the scripts and hyperledger binaries so there is no need to install them on your own machine.

See Hyperledger Documentation at https://hyperledger-fabric.readthedocs.io/en/release-2.2/test_network.html for examples of interacting with the test network. Pass parameters through the container to make updates to your running hyperledger test network.

For example, if you would like to create a new channel on your running hyperledger test network.

```bash
docker run --rm --name hyperledgerw \
--net host \
-v `pwd`/runner/organizations:/hyperledger/fabric-samples/test-network/organizations \
-v `pwd`/runner/system-genesis-block:/hyperledger/fabric-samples/test-network/system-genesis-block \
intersystemsdc/irisdemo-base-hyperledgerw:version-latest createChannel -c mychannel
```

This container is used in the  [Financial Reporting Demo](https://github.com/intersystems-community/irisdemo-demo-finrep) for configuring the hyperldger network and deploying chain code.

Valid chaincodes can be added to the chaincodes directory and deployed to your network using this container. 



