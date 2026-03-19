# Use Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

# Expose port (Render uses 10000)
EXPOSE 10000

# Start the app
CMD ["npm", "start"]