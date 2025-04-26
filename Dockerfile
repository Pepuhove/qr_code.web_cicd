# Use Node 18 Alpine version
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json from the "QR Code generator" folder
COPY "QR Code generator/package*.json" ./

# Install app dependencies
RUN npm install

# Copy the rest of your app code
COPY "QR Code generator/" ./

# Expose the app port (change if needed)
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
