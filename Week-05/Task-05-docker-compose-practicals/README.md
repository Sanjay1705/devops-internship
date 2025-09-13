# Docker Compose Practicals 

This lab introduces interns to Docker Compose for orchestrating multi-container applications. Each practical demonstrates how to define services, networks, volumes, and dependencies using a single YAML file.


### Practical Summaries:


# Practical 1 – Postgres + Adminer (Database + UI)
- Goal: Run a PostgreSQL database and Adminer UI together
- Key Concepts: Named volumes, service dependencies, environment variables
- Steps:
  1. Define db and adminer services in docker-compose.yml
  2. Use environment variables for DB setup
  3. Use named volume for data persistence
  4. Access Adminer at http://localhost:8081
- Outcome: Create tables, insert data, restart containers and confirm persistence

# Practical 2 – Nginx + WhoAmI (Static + Diagnostic)
- Goal: Serve static HTML via Nginx and run a diagnostic container
- Key Concepts: Volume mounts, port mapping, multi-service setup
- Steps:
  1. Mount index.html into Nginx container
  2. Run WhoAmI container to inspect request metadata
  3. Map ports 8082 (Nginx) and 8083 (WhoAmI)
  4. Access both services independently
- Outcome: Nginx serves custom HTML, WhoAmI returns container info

### Learning Outcomes:

- Understand Docker Compose syntax and structure
- Define multiple services in one file
- Use named volumes for persistent storage
- Configure environment variables and service dependencies
- Map ports and mount volumes for local development
- Start and stop entire app stack with one command

Usage Notes:

- Use `docker compose up -d` to start services
- Use `docker compose down` to stop and clean up
- Inspect volumes with `docker volume ls`
- Inspect networks with `docker network ls`
- Logs: `docker compose logs` or `docker compose logs <service>`

Cleanup Checklist:

- Stop services: docker compose down
- Remove volumes: docker volume rm <name> (optional)
- Remove unused images: docker image prune
- Remove networks: docker network prune (if custom)
