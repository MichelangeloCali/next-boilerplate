FROM node:18

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY . .

RUN npm install --force
RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]
