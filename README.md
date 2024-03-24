docker demo

# Build Docker image with tag 'node-app-image' (-t flag for specifying tag)
docker build -t node-app-image .

# Run Docker container named 'node-app' from the 'node-app-image' image, mapping port 8080 (-p flag for port mapping), running in detached mode (-d flag for detached mode)
docker run -p 8080:8080 -d --name node-app node-app-image

# List running Docker containers (no flags used)
docker ps

# Stop the 'node-app' container (no flags used)
docker stop node-app

# Remove the 'node-app' container forcefully (-f flag for force)
docker rm node-app -f
