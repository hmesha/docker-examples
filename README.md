# docker-examples
- `hello-docker`: Docker container running `centos` and prints "Hello Docker..." 
- `java-maven-base` : Docker container having `Oracle JDK` and `Apache Maven` installed on top of `centos` 
- `tomcat-base` : Uses `java-maven-base` as base image and starts Tomcat service. Refer `README` within the project for more details.
- `nodejs-base` : Docker container having `nodejs` on top of `centos`
- `nodejs-example` : Uses `nodejs-base` as base image and starts `nodejs` server exposing simple `GET` endpoint
- `mountebank` : Uses `nodejs-base` as base image and installs `mountebank` on top of that. Refer `README` within the project for more details.
