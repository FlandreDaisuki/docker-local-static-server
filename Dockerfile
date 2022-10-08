FROM node:lts-alpine

VOLUME [ "/root/www" ]

WORKDIR /root

COPY . .

RUN npm i && npm i -g localtunnel

CMD [ "npm", "run", "start" ]
