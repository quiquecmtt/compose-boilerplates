#! /bin/bash

for svc in {prowlarr,radarr,sonarr}; do
  docker compose exec -ti ${svc} sed -i "s|<UrlBase></UrlBase>|<UrlBase>/${svc}</UrlBase>|g" /config/config.xml
done

docker compose exec -ti bazarr sed -i "s|base_url: ''|base_url: /bazarr|g" /config/config/config.yaml

docker compose restart prowlarr radarr sonarr
