FROM centos:latest
RUN curl --silent --location https://rpm.nodesource.com/setup | bash -
RUN yum -y install nodejs

CMD echo Node Version! `node -v` &&  echo NPM Version! `npm -v`

