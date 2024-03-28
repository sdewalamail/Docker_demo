# Use an official Node.js runtime as the base image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install --only=production

# Copy the rest of the application code to the working directory
COPY . ./

# Expose the port that the app runs on
ENV PORT 8080
EXPOSE $PORT

# Define the command to run your app
CMD ["node", "index.js"]
