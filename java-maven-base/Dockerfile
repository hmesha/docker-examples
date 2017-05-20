FROM centos:latest

RUN yum install wget -y
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.rpm"
RUN yum localinstall jdk-8u112-linux-x64.rpm -y
RUN yum install which -y
RUN echo "`java -version`"

RUN mkdir /usr/local/software
RUN wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar -xvzf apache-maven-3.3.9-bin.tar.gz
RUN mv apache-maven-3.3.9 /usr/local/software
ENV M2_HOME=/usr/local/software/apache-maven-3.3.9
ENV PATH=$M2_HOME/bin:$PATH
RUN echo "`mvn -v`"

