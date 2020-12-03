build:
	docker build -t intersystemsdc/irisdemo-base-hyperledgerw:version-1.2.0 .

clean:
	-docker rmi intersystemsdc/irisdemo-base-hyperledgerw:version-1.2.0 

push:
	-docker push intersystemsdc/irisdemo-base-hyperledgerw:version-1.2.0
