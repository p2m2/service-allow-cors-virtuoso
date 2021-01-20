FROM zenika/alpine-chrome:with-node

MAINTAINER Olivier Filangi <olivier.filangi@inrae.fr>

USER root
RUN apk update && apk upgrade && apk add --no-cache chromium-chromedriver curl bash

USER chrome
RUN npm install selenium-webdriver

COPY virtuoso_cors.js .

CMD [ "node","virtuoso_cors.js" ]
