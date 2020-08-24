FROM node:14.8.0-alpine3.12

ENV WS_SECRET=hello

RUN apk add --no-cache git
RUN git clone https://github.com/cubedro/eth-netstats 

WORKDIR /eth-netstats
RUN npm install \
&& npm install -g grunt-cli \
&& grunt

EXPOSE 3000
ENTRYPOINT ["npm","start"]