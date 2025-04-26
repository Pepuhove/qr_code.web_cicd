# Use Node 18 Alpine
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY QR\ Code\ Generator/package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the app
COPY QR\ Code\ Generator/ ./

# Expose port (example)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
