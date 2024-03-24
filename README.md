docker demo

# Build Docker image with tag 'node-app-image' (-t flag for specifying tag)
docker build -t node-app-image .

# Run Docker container named 'node-app' from the 'node-app-image' image, mapping port 8080 (-p flag for port mapping), running in detached mode (-d flag for detached mode)
docker run -p 8080:8080 -d --name node-app node-app-image

# To sync changes to container
# For Command Prompt (Windows)
docker run -v %cd%\filePathToYourLocalMechine:/FileLocationForContainerLocation:ro -p 8080:8080 -d --name node-app node-app-image
expmle: docker run -v %cd%:/app:ro --env-file ./.env -p 8080:8080 -d --name node-app node-app-image

# For PowerShell (Windows)
docker run -v ${PWD}/filePathToYourLocalMechine:/FileLocationForContainerLocation -p 8080:8080 -d --name node-app node-app-image
example: docker run -v ${PWD}:/app:ro --env-file ./.env -p 8080:8080 -d --name node-app node-app-image


# For Linux and macOS
docker run -v $(pwd)/filePathToYourLocalMechine:/FileLocationForContainerLocation:ro -p 8080:8080 -d --name node-app node-app-image

# List running Docker containers (no flags used)
docker ps

# Stop the 'node-app' container (no flags used)
docker stop node-app

# Remove the 'node-app' container forcefully (-f flag for force)
docker rm node-app -f

# Execute an interactive bash shell within the 'node-app' container (-it flags for interactive mode and allocating a pseudo-TTY)
docker exec -it node-app bash

