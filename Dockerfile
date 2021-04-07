FROM node:14.16.0-alpine3.13

ENV SAILS_HOME=/app

RUN mkdir -p $SAILS_HOME

WORKDIR $SAILS_HOME

COPY . $SAILS_HOME

# install dependencies
RUN npm install

EXPOSE 1337

ENTRYPOINT ["./docker-entrypoint.sh"]
