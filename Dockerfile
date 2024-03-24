# Use an official Node.js runtime as the base image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . ./

# Expose the port that the app runs on
EXPOSE 8080

# Define the command to run your app
CMD ["node", "index.js"]
