FROM zenika/alpine-chrome:with-node

LABEL name="service-allow-cors-virtuoso"
LABEL maintener="olivier.filangi@inrae.fr"
LABEL build_date="2021-07-01"

USER root
RUN apk update && apk upgrade && apk add --no-cache chromium-chromedriver curl bash

USER chrome
RUN npm install selenium-webdriver

COPY virtuoso_cors.js .

CMD [ "node","virtuoso_cors.js" ]
