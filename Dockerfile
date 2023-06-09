FROM node:lts-hydrogen

WORKDIR /usr/src/app  

# Copy package.json and package-lock.json to the working directory
COPY ./minigames-nextjs/package*.json .

# Install dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Define the command to run your application
CMD [ "npm", "start" ]