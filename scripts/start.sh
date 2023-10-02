echo "running docker compose up"
docker compose -f ./docker/compose.yml up -d
echo "opening chrome"
open -a "Google Chrome" http://localhost:9999/jekyll-setup/