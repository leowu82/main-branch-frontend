# Use the official Node.js image from Docker Hub
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy all to container
COPY . .

# Install project dependencies (package.json)
RUN npm install

# Expose port 8080
EXPOSE 8080

# Run server
CMD ["npm", "run", "serve"]
