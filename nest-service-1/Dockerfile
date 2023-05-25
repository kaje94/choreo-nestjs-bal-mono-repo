# Base image
FROM node:16.15.0

USER 10014

# Create app directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm cache clean --force

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Creates a "dist" folder with the production build
RUN npm run build

EXPOSE 3001

# Start the server using the production build
CMD [ "node", "dist/main.js" ]