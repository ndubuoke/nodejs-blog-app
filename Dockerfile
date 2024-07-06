# Use the official Node.js image from the Docker Hub
FROM node:14

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container image.
COPY . .

# Run the web service on container startup.
CMD [ "node", "index.js" ]

# Inform Docker that the container listens on the specified network ports at runtime.
EXPOSE 3000
