FROM node:14.17.5
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3005
CMD ["node", "app.js"]
