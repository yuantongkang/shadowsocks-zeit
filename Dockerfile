FROM mhart/alpine-node:10.7.0 as base
WORKDIR /srv

COPY ./src/package.json ./src/yarn.lock /srv/
RUN yarn

COPY ./src .
CMD [ "yarn", "start"]
