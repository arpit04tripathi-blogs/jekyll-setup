# setup-jekyll

This project guides to setup the jekyll project.

# Installation
## Normal Installation
Install jekyll for specific OS by following [these](https://jekyllrb.com/docs/installation/) steps

```
Step 1: Install Homebrew (or update it)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew doctor

Step 2:
```

## Docker based Installation

```
sh scripts/create.sh
sh scripts/start.sh

ERROR: 
/usr/gem/gems/jekyll-4.2.2/lib/jekyll/commands/serve/servlet.rb:3:in `require': cannot load such file -- webrick (LoadError)
```

Add `gem "webrick"` to `_config.yml`
```
sh scripts/start.sh

visit localhost:9999
```
[localhost:9999](localhost:9999)

# Dump

Install and run Jekyll project using docker

Article - https://ddewaele.github.io/running-jekyll-in-docker/ 
Docker Hub - https://hub.docker.com/r/jekyll/jekyll/ 

```
mkdir -p ~/Projects/NewBlog ;
cd ~/Projects/NewBlog;
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll jekyll new .
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll jekyll bundle add webrick

docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll jekyll build

docker run --name newblog --volume="$PWD:/srv/jekyll" -p 3000:4000 -it jekyll/jekyll jekyll serve --watch --drafts
```

Access on local - http://localhost:3000/ 

chruby ruby-3.2.2 