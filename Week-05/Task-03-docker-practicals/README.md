# Docker Practicals 


This lab series introduces interns to real-world Docker use cases. Each practical builds on core containerization concepts—starting from static site serving to multi-container networking. All tasks are performed locally using Docker Desktop or Docker Engine.


# Practical 1 – Static Site via Nginx + Bind Mount
- Goal: Serve index.html using official nginx image with host bind mount
- Key Concepts: Volume mounting, port mapping
- Commands: docker run -d -p 8080:80 -v $(pwd):/usr/share/nginx/html:ro nginx
- Outcome: Access static site at http://localhost:8080

# Practical 2 – Python App with ENV + Hostname
- Goal: Containerize Python script that prints GREETING env var and hostname
- Key Concepts: Dockerfile, environment variables, CMD
- Commands: docker build -t env-printer . → docker run -e GREETING=HiTeam env-printer
- Outcome: Output shows custom greeting and container hostname

# Practical 3 – Flask Web App in Docker
- Goal: Containerize Flask app with / and /health routes
- Key Concepts: Python image, requirements.txt, port mapping
- Commands: docker build -t flask-app . → docker run -p 5000:5000 flask-app
- Outcome: Access app at http://localhost:5000 and /health returns JSON

# Practical 4 – Two Containers on Custom Network
- Goal: Flask app calls another containerized service via Docker network
- Key Concepts: Docker networks, inter-container communication, service discovery
- Steps:
  1. Create network: docker network create intern-net
  2. Build and run message-service on port 6000
  3. Build and run Flask app on port 5000
  4. Use container name `message-service` in Flask code
- Outcome: Visiting http://localhost:5000 returns response from message-service

### Learning Outcomes:

- Understand Dockerfile structure and image creation
- Use bind mounts and environment variables effectively
- Containerize Python and Flask applications
- Build multi-container setups with custom networking
- Debug containers using docker ps, logs, inspect

Cleanup Checklist:

- Stop containers: docker stop <id>
- Remove containers: docker rm <id>
- Remove images: docker rmi <image>
- Remove networks: docker network rm intern-net
- Prune system (optional): docker system prune
