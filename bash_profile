export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PIP_REQUIRE_VIRTUALENV=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/Applications/Araxis Merge.app/Contents/Utilities"

. ~/.bash_prompt

if [ -f $(brew --prefix)/etc/bash_completion ]; then
      . $(brew --prefix)/etc/bash_completion
fi

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

function title {
  printf "\033]0;%s\007" "$1"
}