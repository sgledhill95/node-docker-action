# Base image with Node.js
FROM node:18

# Set working directory
WORKDIR /app

# Copy Node.js app
COPY package*.json ./
RUN npm install
COPY . .

# Expose ports
EXPOSE 3000

# Start both Node and Nginx
CMD npm start