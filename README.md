# Config Folder

## Structure

Main folders:

- `alacritty`: visual settings for terminal emulator. Includes `alacritty.toml` with main settings (font, window opacity, path to color scheme) plus a folder for themes, cloned directly from `alacritty-themes` and committed in its entirety for ease of access & use. To use a custom theme, create a file in `.toml` format or copy and edit an existing theme file.
- `nvim`: configuration for Neovim; more details on its structure below.
- `tmux`: includes a `tmux.conf` file and nothing else for now.

Neovim checks for an `init.lua` file in `~/.config/nvim` by default, and all other config info has to be loaded through it. Any `require` statements search for the specified file in `./lua`. Other than those defaults, it's sort of a personal choice how you want to organize your files.

I use Lazy.vim to manage my plugins, and to organize them (and limit the length of any one file) each plugin has its own file in `.config/nvim/lua/plugins`. Lazy.vim knows to check each file in this folder for plugins, so to add a new one, you just need to add a file and format it like the others!

The `core` folder contains other files - the ones that aren't associated with a single plugin or third-party software, but rather affect all of Neovim. `keymaps.lua` is for any new or altered nvim bindings, `lazy.lua` has some extra setup information (all default), and `opt.lua` does some miscellaneous settings like adding line numbers, changing the colorscheme, and disabling the mouse.

## Necessary Packages

Install with Homebrew:

- `tmux`: tiling manager
- `tmux-mem-cpu-load`: adds memory usage to tmux status bar

## ZSH configuration

Currently I use `oh-my-zsh` and have yet to figure out how to move all that into `.config`. Until this is fixed I need to copy the following aliases into `~.zshrc`: 

```
alias py="python3"
alias gc="git commit -m"
alias gp="git push"
alias gpb="git push -u origin HEAD"
alias ga="git add"
alias gs="git status"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gh="open -a firefox -g https://github.com"
```

## `cl` Command

Add the following snippet to `~.zshrc` for a quicker version of `cd [dir] && ls`:

```
cl() {
    cd "$1" && ls
}
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
