docker service create --name traefik_caddy --replicas 1 \
--label "traefik.enable=true" \
--label "traefik.http.routers.caddy.rule=Host('caddy.localhost')" \
--label "traefik.http.routers.caddy.entrypoints=http" \
--label "traefik.http.services.caddy.loadbalancer.server.port=2015" \
--network traefik_mynetwork  \
abiosoft/caddy:latest