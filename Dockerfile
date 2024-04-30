FROM node:22.0.0-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN npm install &&\
    apt-get update &&\
    apt-get upgrade
EXPOSE  4000
CMD ["node", "graphserver.js"]
