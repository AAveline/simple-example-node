FROM node:14.15.0
WORKDIR /usr/src/app

EXPOSE 3000
# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Building app
RUN npm run build

# Running the app
CMD [ "npm", "start" ]