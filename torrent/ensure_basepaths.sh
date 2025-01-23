#! /bin/bash

for svc in {prowlarr,radarr,readarr,sonarr};do
    docker compose exec -ti  ${svc} sed -i "s|<UrlBase></UrlBase>|<UrlBase>/${svc}</UrlBase>|g" /config/config.xml
done

docker compose restart prowlarr radarr readarr sonarr