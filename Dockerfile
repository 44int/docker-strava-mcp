# Strava MCP Server Dockerfile
# This Dockerfile sets up the environment and installs dependencies for the Strava MCP Server

FROM node:18-slim

# Set working directory
WORKDIR /app

# Install git to clone the repository
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Clone the repository
RUN git clone https://github.com/r-huijts/strava-mcp.git .

# Install dependencies
RUN npm install

# Build the project
RUN npm run build

# Keep the container running for interactive use
CMD ["tail", "-f", "/dev/null"]
