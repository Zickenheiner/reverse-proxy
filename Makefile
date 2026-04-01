PROXY = docker compose

up:
	$(PROXY) up -d

down:
	$(PROXY) down

reload:
	$(PROXY) exec caddy caddy reload --config /etc/caddy/Caddyfile

logs:
	$(PROXY) logs -f

.PHONY: up down reload logs
