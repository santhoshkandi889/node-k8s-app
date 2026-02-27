FROM node:24-bookworm-slim

WORKDIR /app

# Copy only package files first (better caching)
COPY package*.json ./

# Install dependencies inside container
RUN npm install

# Copy remaining source code
COPY . .

EXPOSE 3000

CMD ["npm", "start"]

