FROM vimalparakhiya/nodejs-base
RUN yum install wget -y
RUN wget https://s3.amazonaws.com/mountebank/v1.10/mountebank-v1.10.0-linux-x64.tar.gz
RUN mkdir -p /usr/software
RUN tar -xvzf mountebank-v1.10.0-linux-x64.tar.gz -C /usr/software
RUN ln -s /usr/software/mountebank-v1.10.0-linux-x64 /usr/software/mountebank
RUN mkdir -p /usr/software/mountebank/templates
COPY templates /usr/software/mountebank/templates
ENV PATH=/usr/software/mountebank:$PATH
ARG PORT
ENV MOUNTEBANK_PORT=$PORT
EXPOSE $PORT 5000
ENTRYPOINT sh -c "mb --port ${MOUNTEBANK_PORT} --configfile /usr/software/mountebank/templates/imposters.ejs"