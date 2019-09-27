# Specify a base image
FROM node:alpine

# Set default working directory 
WORKDIR /usr/app

# Copy the package.json to the image File System first to ensure
# npm install is ran from cache when no dependencies are changed
COPY ./package.json ./ 

# Run npm install command in the docker image to get all dependencies
RUN npm install

# Copy all NodeJS files to docker image File System
COPY ./ ./

# Specify a command to run on container startup
CMD [ "npm", "start"]