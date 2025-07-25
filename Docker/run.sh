docker compose --env-file .env up -d --build
docker ps --format "table {{.Names}}\t{{.Ports}}"
