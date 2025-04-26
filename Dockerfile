# Use Node 18 Alpine
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY qr-code-generator/package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY qr-code-generator/ ./

# Expose port (example)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
