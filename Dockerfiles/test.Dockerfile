FROM node:20.12-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

# Copy required files only
COPY src ./src
COPY tests ./tests
COPY *.mjs ./

CMD [ "npm", "test" ]