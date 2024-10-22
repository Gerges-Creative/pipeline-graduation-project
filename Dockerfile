# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy your application files to the working directory
COPY . .

# Expose the port your app listens on
EXPOSE 80

## Install http-server globally
RUN npm install -g http-server

# Start the application using http-server
CMD ["http-server", ".", "-p", "80"]