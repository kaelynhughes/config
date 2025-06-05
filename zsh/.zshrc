# IMPORTANT: uncomment the following line & the one at the bottom to diagnose speed issues
# zmodload zsh/zprof

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="mytheme"

# + ------- +
# | ALIASES |
# + ------- +

source $DOTFILES/zsh/aliases

# + ------ +
# | PROMPT |
# + ------ +

fpath=($DOTFILES/zsh/prompt $fpath)
# source $DOTFILES/zsh/prompt/prompt_purification_setup
source $DOTFILES/zsh/prompt/prompt_original_setup

# + --------- +
# | LS COLORS |
# + --------- +

export CLICOLOR=1
# see `man ls` for options
export LSCOLORS="Exfxcxdxbxegedabagacadah"

# + --------- +
# | FUNCTIONS |
# + --------- +

cl() {
    cd "$1" && ls
}

cla() {
    cd "$1" && ls -a
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# pyenv is helpful for switching python versions but it's also a little slow - like .3 seconds
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVM is node version manager & can help if I ever need to do stuff with old projects
# but it is SLOW - added over a second every time i had to open a new shell
# instead the following two functions replace only the initial call to either nvm or npm
# which lazy load NVM when it's actually needed and then do the intended command
function nvm () 
{
  unfunction nvm
  unfunction npm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  echo "nvm installed"
  [[ $# < 1 ]] && nvm --version || nvm $@
}

function npm () 
{
  echo "nvm isn't installed! fixing that..."
  unfunction nvm
  unfunction npm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  echo "nvm installed"
  [[ $# < 1 ]] && npm --version || npm $@
}

# IMPORTANT: uncomment this line and the one at the top to diagnose speed issues
# zprof
