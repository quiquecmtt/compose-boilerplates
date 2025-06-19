# Docker Compose Boilerplates

Docker Compose boilerplates being used together in a homelab for multiple purposes.

Stack status:
- [?] Don't remember.
- [OK] Should work correctly.
- [WIP] Work in Progress.

Stacks available:
- **Adguard:** DNS and DHCP server. [?]
- **Authentik:** Authentication and Authorization server. [OK]
- **Cloudflare DDNS:** Dynamic DNS service. [OK]
- **Immich:** Google Photos alternative. [OK]
- **Media Players:** Plex and Jellyfin. [OK]
- **Monitoring:** Grafana + Prometheus stack, along with multiple exporters. [WIP]
- **Portainer:** Container management tool. [OK]
- **SearXNG:** Selfhosted Google search alternative. [OK]
- **Tailscale:** Multiple containers using Tailscale to have multiple domains with HTTPS. [OK]
- **Time Machine:** Backup Utility for Macs. [OK]
- **Torrent:** Arr stack, along with Transmission and Overseerr. [OK]
- **Reverse Proxy:** Traefik Reverse Proxy, with multiple useful services like speedtest. [OK]
- **Watchtower:** Container autoupdater tool. [OK]

> Stacks are highly dependable on `traefik` and `tailscale` stacks, since all web endpoints are accessed through Traefik using Tailscale domains.

Each service can be configured in one way or another to use Authentik as Authentication Provider.

Monitoring exporters available, accessed through Traefik for HTTPS:
- CAdvisor Exporter: Container metrics exporter. Endpoint: `/metrics/containers`.
- Node Exporter: Server metrics exporter. Endpoint: `/metrics/node`.
- SMART Exporter: Disk Metrics exporter. Endpoint: `/metrics/smart`.