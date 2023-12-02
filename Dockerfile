FROM node:18

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80
EXPOSE 443

CMD ["npm", "start"]