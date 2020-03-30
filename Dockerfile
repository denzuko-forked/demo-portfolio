FROM node:latest
MAINTAINER Dwight Spencer (@denzuko) <denzuko@dallasmakerspace.org>

# Build Parameters (PORT, ENVIRONMENT, VCS_URL)
ARG PORT=3000
ARG ENVIRONMENT="developemen'
ARG VCS_URL="https://github.com/denzuko-forked/demo-portfolio.git"

ENV PORT $PORT
ENV NODE_ENV $ENVIRONMENT
ENV VCS_URL $VCS_URL
ENV TZ "Etc/UTC-6"

## Setup
USER node
WORKDIR /home/node
EXPOSE ${PORT}

## Clone the repo and link it as src
RUN git clone --depth 1 $VCS_URL src/
WORKDIR src
RUN npm install && npm run build

## We're now a microservice, npm scripts rule over this app
ENTRYPOINT npm
CMD ["run", "start"]
