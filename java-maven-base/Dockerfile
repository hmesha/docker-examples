FROM centos:latest
RUN yum install wget -y
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.rpm"
RUN yum localinstall jdk-8u112-linux-x64.rpm -y
RUN yum install which -y
RUN echo "Java installed at `which java`"
RUN echo "`java -version`"
