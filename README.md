# Config Folder

## Necessary Packages

I use a couple packages to make this look cool.

Install with Homebrew:

- `tmux`: tiling manager
- `tmux-mem-cpu-load`: adds memory usage to tmux status bar

## ZSH configuration

Currently I use `oh-my-zsh` and have yet to figure out how to move all that into `.config`. Until this is fixed I need to copy the following aliases into `~.zshrc`: 

```
alias py="python3"
alias gc="git commit -m"
alias gp="git push"
alias ga="git add"
alias gs="git status"
```

## Zoxide

I have this installed but as of yet have not used it much. It's a cooler version of `cd` that will remember long path names for you. To install, first `brew install zoxide`, then add the following line to the end of `.zshrc`:

```
eval "$(zoxide init zsh)"
```

Zoxide also recommends you install `fzf` for fuzzy matching: `brew install fzf`

## Pyenv

I've needed this a couple times to switch between Python versions. This is installed via Homebrew - `brew install pyenv` - and then the following is added to `zshrc`:

```
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

Then restart the shell.
