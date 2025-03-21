FROM node:18

WORKDIR /app

COPY package.json package-lock.json /app

RUN npm install


COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm","start"]
