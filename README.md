# setup-jekyll

This project guides to setup the jekyll project.

# Installation

Recommended way is Docker based installation.

## Docker based Installation

```bash
# create using jekyll new command in docker
sh scripts/create.sh
move content from new_site to root
# start the new site using docker
sh scripts/start.sh

ERROR: 
/usr/gem/gems/jekyll-4.2.2/lib/jekyll/commands/serve/servlet.rb:3:in `require': cannot load such file -- webrick (LoadError)
```

Add `gem "webrick"` to `_config.yml`
```
sh scripts/start.sh
```
visit [localhost:9999](http://localhost:9999)

## Normal Installation
Install jekyll for specific OS by following [these](https://jekyllrb.com/docs/installation/) steps

```
chruby ruby-3.2.2
```

# Add bootstrap 5



# Troubleshooting

## Port already used
```bash
# find process_id using the port
netstat -vanp tcp | grep 9999
# kill the process based on process_id
kill -9 <PROCESS_ID>
```

 