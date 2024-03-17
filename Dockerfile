FROM node:21-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json
COPY package*.json ./

COPY main.js ./

# Install the dependencies
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

