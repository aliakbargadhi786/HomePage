# Use a Node.js base image with a compatible version (e.g., 18 or higher)
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the desired port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
