ZSH_DISABLE_COMPFIX=true

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status battery)

POWERLEVEL9K_DIR_HOME_BACKGROUND=black
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=black
POWERLEVEL9K_DIR_ETC_BACKGROUND=black
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND=black
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=black

POWERLEVEL9K_DIR_HOME_FOREGROUND=skyblue3
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=skyblue3
POWERLEVEL9K_DIR_ETC_FOREGROUND=skyblue3
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND=skyblue3
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=skyblue3

POWERLEVEL9K_VIRTUALENV_BACKGROUND=skyblue3
POWERLEVEL9K_VIRTUALENV_FOREGROUND=black

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="➔ "

POWERLEVEL9K_BATTERY_HIDE_ABOVE_THRESHOLD=60

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

function cd() {
  if [[ -d ./.env ]] ; then
    deactivate
  fi

  builtin cd $1

  if [[ -d ./.env ]] ; then
    . ./.env/bin/activate
  fi
}

export PATH="/usr/local/sbin:$PATH"

export CLICOLOR=1
zstyle ':completion:*:default' list-colors ''
export LSCOLORS="Gxfxcxdxbxegedabagacad"
