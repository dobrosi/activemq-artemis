# ActiveMQ Artemis Docker image
Unofficial ActiveMQ Artemis image for Docker containers.
https://activemq.apache.org/components/artemis/
## Get source
```
git clone https://github.com/dobrosi/activemq-artemis.git
```
## Build image
```
cd activemq-artemis
docker build -t dobrosi/activemq-artemis .
```
## Run container from image
```
docker run --name activemq-artemis -P dobrosi/activemq-artemis
```
## Tag image
```
docker tag dobrosi/activemq-artemis dobrosi/activemq-artemis:latest
```
## Push image
```
docker push dobrosi/activemq-artemis:latest
```
## Stop container
```
docker stop activemq-artemis
```
## Start container
```
docker start activemq-artemis
```
## Delete container
```
docker rm activemq-artemis
```
