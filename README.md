# Article Sharing Platform

This is an article sharing platform built with Vue.js. Users can browse articles, view their own articles, add new articles, and interact with articles by editing, deleting, or commenting on them.

## Requirements

- Docker
- Node.js (for local development)

## Usage

To build the Docker image for the application, run the following command in the root directory of the project:

```sh
docker build -t app-name .
```

To run the Docker container and expose it on port 8080:
```sh
docker run -p 8080:8080 app-name
```

Once the Docker container is running, you can access the application in your web browser at:

```
http://localhost:8080
```

