# Docker CLI Cheat Sheet

## Build and Manage Images

- **Build an image from a Dockerfile:**  
  ```sh
  docker build -t <image_name> .
  ```
- **Build an image without using the cache:**  
  ```sh
  docker build -t <image_name> . --no-cache
  ```
- **List local images:**  
  ```sh
  docker images
  ```
- **Delete an image:**  
  ```sh
  docker rmi <image_name>
  ```
- **Remove all unused images:**  
  ```sh
  docker image prune
  ```

## Working with Docker Hub

- **Login to Docker Hub:**  
  ```sh
  docker login -u <username>
  ```
- **Publish an image to Docker Hub:**  
  ```sh
  docker push <username>/<image_name>
  ```
- **Search Docker Hub for an image:**  
  ```sh
  docker search <image_name>
  ```
- **Pull an image from Docker Hub:**  
  ```sh
  docker pull <image_name>
  ```

## Working with Containers

- **Create and run a container with a custom name:**  
  ```sh
  docker run --name <container_name> <image_name>
  ```
- **Run a container and publish its port(s) to the host:**  
  ```sh
  docker run -p <host_port>:<container_port> <image_name>
  ```
- **Run a container in the background (detached mode):**  
  ```sh
  docker run -d <image_name>
  ```
- **Start or stop an existing container:**  
  ```sh
  docker start <container_name>
  docker stop <container_name>
  ```
- **Remove a stopped container:**  
  ```sh
  docker rm <container_name>
  ```
- **Open a shell inside a running container:**  
  ```sh
  docker exec -it <container_name> sh
  ```
- Getting into the running container in terminal /bin/bash: 

```sh 
  docker exec  –it  <container id>  /bin/bash 
```
- **Fetch and follow the logs of a container:**  
  ```sh
  docker logs -f <container_name>
  ```
- **Inspect a running container:**  
  ```sh
  docker inspect <container_name>
  ```
- **List currently running containers:**  
  ```sh
  docker ps
  ```
- **List all containers (running and stopped):**  
  ```sh
  docker ps --all
  ```
- **View resource usage stats:**  
  ```sh
  docker container stats
  ```

## General Docker Commands

- **Start the Docker daemon:**  
  ```sh
  docker -d
  ```
- **Get help with Docker commands:**  
  ```sh
  docker --help
  ```
- **Display system-wide Docker information:**  
  ```sh
  docker info
  ```

## Docker Concepts

### Images
Docker images are lightweight, standalone, and executable packages of software that include everything needed to run an application—code, runtime, system tools, system libraries, and settings.

### Containers
A container is a runtime instance of a Docker image. Containers ensure that an application runs uniformly across different environments, such as development and staging.

### Docker Hub
Docker Hub is a service provided by Docker for finding and sharing container images. Learn more at [Docker Hub](https://hub.docker.com).

## Installation & Resources

- **Docker Desktop is available for Mac, Linux, and Windows:**  
  [Install Docker](https://docs.docker.com/desktop)

- **Example projects that use Docker:**  
  [Awesome Compose on GitHub](https://github.com/docker/awesome-compose)

- **Docker Documentation:**  
  [Official Docs](https://docs.docker.com)

