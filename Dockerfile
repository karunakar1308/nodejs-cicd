# Use official Node.js image
FROM node:20

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
COPY index.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
