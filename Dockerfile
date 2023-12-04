FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN rm -rf node_modules

RUN npm cache clean --force

RUN npm install

COPY . .

RUN npm run test:ci

COPY junit.xml ../

RUN npm run build

EXPOSE 80
EXPOSE 443

CMD ["npm", "start"]