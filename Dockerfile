# Use an official Node runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install


# Copy the rest of the application code to the container
COPY . .

# Build the application for production
RUN npm run 

CMD ["npm", "start"]
