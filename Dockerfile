FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install -g nodemon
RUN npm install -g ts-node
RUN npm install

COPY prisma ./prisma

RUN npx prisma generate

COPY . .

EXPOSE 8000

CMD [ "npm", "run", "dev" ]