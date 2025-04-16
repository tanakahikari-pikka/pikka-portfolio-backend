FROM node:18-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

WORKDIR /app
COPY dist ./dist

CMD ["npm", "run", "dev"]
