build:
	docker build -t intersystemsdc/irisdemo-base-hyperledgerw:version-latest .

clean:
	-docker rmi intersystemsdc/irisdemo-base-hyperledgerw:version-latest

push:
	-docker push intersystemsdc/irisdemo-base-hyperledgerw:version-latest
