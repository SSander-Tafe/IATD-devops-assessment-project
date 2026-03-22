FROM node:20.12-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --omit=dev

# Copy only runtime files (NO tests)
COPY src ./src
COPY *.mjs ./

EXPOSE 3000

CMD [ "npm", "start" ]