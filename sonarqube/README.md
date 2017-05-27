# Sonarqube Docker Image

Sonarqube server requires backend database. Below steps explain building Docker image using either embedded DB or MySQL DB.

Sonar server would be accessible at [http://localhost:9000](http://localhost:9000)

**Note:** These steps are for macOS. 

## Prerequisites
Create directory on host machine as follows to mount it on Docker container as persistent volume. This will be used to mount sonarqube data 
directory.

```
sudo mkdir -p /var/docker-volumes/sonarqube
sudo chmod 777 /var/docker-volumes/
mkdir -p /var/docker-volumes/sonarqube/data
mkdir -p /var/docker-volumes/sonarqube/temp
```

## Embedded Databse
### Build Image

```docker build -t vimalparakhiya/sonarqube --build-arg SONAR_PROPERTIES=sonar-embedded.properties sonarqube/```

### Run Image

```
docker run -d -p 9000:9000 \
    -v sonarqube-data-h2:/opt/sonarqube/data \
    -v sonarqube-conf-h2:/opt/sonarqube/conf \
    -v sonarqube-extensions-h2:/opt/sonarqube/extensions \
    -v sonarqube-lib-bundled-plugins-h2:/opt/sonarqube/lib/bundled-plugins \
    vimalparakhiya/sonarqube
```


## MySQL Databse
### Build Image

```docker build -t vimalparakhiya/sonarqube --build-arg SONAR_PROPERTIES=sonar-mysql.properties sonarqube/```

### Run Image
#### Prerequisites
MySQL DB should be installed and running on Docker host. Create `sonar` schema and `sonaruser` as shown below.

```
CREATE SCHEMA sonar;
CREATE USER 'sonaruser'@'%' IDENTIFIED BY 'sonarpassword';
GRANT ALL PRIVILEGES ON sonar.* TO 'sonaruser'@'%';
FLUSH PRIVILEGES;
```

#### Start Docker Container
Create alias ip for loop-back interface to access MySQL running on Docker host from the container.
```
sudo ifconfig lo0 alias 172.16.123.1
```

```
docker run -d -p 9000:9000 \
    -v sonarqube-data-mysql:/opt/sonarqube/data \
    -v sonarqube-conf-mysql:/opt/sonarqube/conf \
    -v sonarqube-extensions-mysql:/opt/sonarqube/extensions \
    -v sonarqube-lib-bundled-plugins-mysql:/opt/sonarqube/lib/bundled-plugins \
    --add-host=docker.local:172.16.123.1  \
    vimalparakhiya/sonarqube
```

