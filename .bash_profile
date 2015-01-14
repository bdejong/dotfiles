export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
. ~/.bash_prompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
      . $(brew --prefix)/etc/bash_completion
fi

# Python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

function title {
  printf "\033]0;%s\007" "$1"
}

export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/Applications/Araxis Merge.app/Contents/Utilities:~/Documents/sandbox/AWS-ElasticBeanstalk-CLI-2.6.3/eb/macosx/python2.7"

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/bram.dejong/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
