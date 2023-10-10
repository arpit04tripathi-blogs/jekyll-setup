echo =========================================================
echo Running $0 with $# arguments
echo [processID] $$
echo [arguments] $@
echo =========================================================

case $1 in
  --new)
    echo "Creating new project"
    docker compose -f ./docker/compose.yml up create-new
    mv new_site/* .
    rm -r new_site
    ;;
  --stop)
    echo "running docker compose down"
    docker compose -f ./docker/compose.yml down server
    ;;
  *)
    echo docker compose up
    docker compose -f ./docker/compose.yml up server -d
    cmd=$( open -a "Google Chrome" http://localhost:9999/jekyll-setup/ )
    echo opening chrome $cmd
    ;;
esac

echo
