FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy only package.json and package-lock.json first (for layer caching)
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Now copy the rest of your app's code
COPY . .

# Expose port 3000 (assuming your app runs there)
EXPOSE 3000

# Start your Node.js app
CMD ["npm", "start"]
