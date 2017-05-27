FROM vimalparakhiya/java-maven-base
RUN wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-6.3.1.zip
RUN yum install unzip -y
RUN mv sonarqube-6.3.1.zip /opt
RUN unzip -d /opt /opt/sonarqube-6.3.1.zip
RUN ln -s /opt/sonarqube-6.3.1 /opt/sonarqube

ARG SONAR_PROPERTIES
COPY ${SONAR_PROPERTIES} /opt/sonarqube/conf/sonar.properties
VOLUME ["/opt/sonarqube/data", "/opt/sonarqube/conf", "/opt/sonarqube/extensions", "/opt/sonarqube/lib/bundled-plugins"]
EXPOSE 9000
ENTRYPOINT sh -c "java -jar /opt/sonarqube/lib/sonar-application-6.3.1.jar"
#CMD ["bash"]