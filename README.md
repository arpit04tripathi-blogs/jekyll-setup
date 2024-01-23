# jekyll-setup

This project guides to setup the jekyll project.

# Installation

1. Create a new repository
2. `git clone` the repo and open in editor (like vs code)
3. Copy directories - `docker` and `scripts` from this repo to new repo in vs code
4. you should have these installed - `docker` and `chrome browser`
5. Run the command in terminal - `sh scripts/localhost.sh --new`
6. This creates basic folder structure.
7. Replace all instances of text `jekyll-setup` with your repo name (ex. `my-repo`), this will change below files
   1. `docker-compose.yml` - change `container_name: jekyll-setup` to `container_name: my-repo`
   2. `localhost.sh` - `http://localhost:9999/jekyll-setup/` to `http://localhost:9999/my-repo/`
8. `Gemfile` - add `gem "webrick"`
9.  `_config.yml` - update `baseurl` as `/my-repo`

# Running on local

1. start server - `sh scripts/localhost.sh`
   1. This will open chrome browser or you can visit [localhost:9999](http://localhost:9999)
2. stop server - `sh scripts/localhost.sh --stop`

# Troubleshooting

Official documentation for jekyll is [here](https://jekyllrb.com/)

## Port already used
```bash
# find process_id using the port
netstat -vanp tcp | grep 9999
# kill the process based on process_id
kill -9 <PROCESS_ID>
```

# Useful git commands

```
git fetch --all -p; git pull; git status;
git merge origin/main;
git push;
```

This is based on jekyll-theme [minima](https://github.com/jekyll/minima#contents-at-a-glance)
