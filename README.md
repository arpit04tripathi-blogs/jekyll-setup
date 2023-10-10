# setup-jekyll

This project guides to setup the jekyll project.

# Installation

1. Create a new repository
2. git clone the repo and open in editor (like vs code)
3. Copy directories - docker and scripts from this repo to new repo in vs code
4. you should have these installed - docker and chrome browser
5. Run the command in terminal - `sh scripts/localhost.sh --new`
6. Update `Gemfile` to add `gem "webrick"`
7. OPTIONAL Step
   1. Update container name in yml in docker dir
   2. Update `_config.yml` for `baseurl`
   3. update `start.sh` for updated url
8. Run the command in terminal - `sh scripts/localhost.sh`
9. This will open chrome browser or you can visit [localhost:9999](http://localhost:9999)
10. To stop the local server - `sh scripts/localhost.sh --stop`

Official documentation for jekyll is [here](https://jekyllrb.com/)

# Troubleshooting

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