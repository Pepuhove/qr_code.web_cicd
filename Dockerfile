# Build Stage
FROM node:20-alpine AS builder

# Set work directory
WORKDIR /app

# Install only production dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy the rest of the app
COPY . .

# Run app with minimal image
FROM node:20-alpine

WORKDIR /app

# Copy node_modules and app files from builder
COPY --from=builder /app /app

# Expose port
EXPOSE 3000

# Run the server
CMD ["node", "index.js"]
