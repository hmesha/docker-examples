FROM registry.access.redhat.com/rhel7/rhel:latest
RUN curl --silent --location https://rpm.nodesource.com/setup | bash -
RUN yum -y install nodejs

RUN echo "Node Version! `node -v`"
RUN echo "NPM Version! `npm -v`"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

EXPOSE 8080

CMD [ "npm", "start" ]