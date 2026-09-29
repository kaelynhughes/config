# Config Folder

## Structure

### Alacritty

Visual settings for terminal emulator. Includes: 

- `alacritty.toml` - contains main settings (font, window opacity, path to color scheme) 
- Folder for themes - this is cloned directly from `alacritty-themes` and committed in its entirety for ease of access & use 
    - To use a custom theme, create a file in `.toml` format or copy and edit an existing theme file
    - The purple theme I use most often is in `alacritty/themes/girlypop.toml`

### Neovim

Neovim checks for an `init.lua` file in `~/.config/nvim` by default, and all other config info has to be loaded through it. Any `require` statements search for the specified file in `./lua`. Other than those defaults, it's sort of a personal choice how you want to organize your files.

I use Lazy.vim to manage my plugins, and to organize them (and limit the length of any one file) each plugin has its own file in `.config/nvim/lua/plugins`. Lazy.vim knows to check each file in this folder for plugins, so to add a new one, you just need to add a file and format it like the others!

**Core:**

- `keymaps.lua` is for any new or altered nvim bindings
- `lazy.lua` has some extra setup information (all default at the moment)
- `opt.lua` does some miscellaneous settings like adding line numbers, changing the colorscheme, and disabling the mouse

**Plugins:**

- `catppuccin`: adds color scheme to nvim. I chose this one because it was one of the easiest to customize, and I wanted to pick my own colors/match it to the cli
- `git-blame`: adds blame to the end of the current line. Use `Space + b` to toggle on and off.
- `gitsigns`: add a column next to line numbers to show where lines have been changed or deleted compared to the most recent commit
- `guess-indent`: automatically sets the length of a tab to the current indent length
- `lsp-zero`: 
- `lualine`: configures status line to show mode, git branch, changes, filename etc
- `luarocks`: 
- `lush`: 
- `nvim-autopairs`: when you type a character like `{` or `"`, automatically adds the appropriate end character after the cursor
- `nvim-colorizer`: 
- `nvim-tree`: see the current file tree. Press `Space + t` to open and `Space + c` to close.
- `nvim-ts-autotag`: 
- `render-markdown`: adds formatting to markdown files. Colored headings, highlighted code blocks, etc. Toggle on and off with `Space + md`
- `telescope`: 
- `tree-sitter`: 
- `which-key`:

### Tmux

Pretty simple. Everything goes in `tmux.conf`.

### Zsh

I used to use oh-my-zsh but eventually got annoyed with it, and also wanted to understand that side of things better. Most of what I previously liked about it has been manually added. 

`.zshenv` tells the computer to look in `~/.config/zsh` for related files, so it's the only one needed in the home directory. If anything seems funky when setting up a new program, check that the program isn't trying to add to a zsh file in the home directory as that file is not gonna get read.


## Set up new computer

### Installations

Install font from [NerdFonts](https://www.nerdfonts.com/font-downloads), then install all the .ttf files:

- [SauceCodePro Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/SourceCodePro.zip)

Install directly from script:

- NVM and latest version of node. The function created in `.zshrc` activates NVM - it does not install it. This is used for a number of neovim plugins, so it will not work correctly until this is done.
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | bash
nvm install node
```

Install executable:

- [Alacritty](https://www.alacritty.org)

Install with package manager:

- `tmux`: tiling manager
- `tmux-mem-cpu-load`: adds memory usage to tmux status bar

### Link zsh config

To make sure that zsh config automatically updates via git, create a symlink in `~` linking to `.zshenv`:

```
ln .config/zsh/.zshenv .zshenv
```


## Other Notes

### Zoxide

I have this installed but as of yet have not used it much. It's a cooler version of `cd` that will remember long path names for you. To install, first install zoxide using a package manager, then add the following line to the end of `.zshrc`:

```
eval "$(zoxide init zsh)"
```

Zoxide also recommends you install `fzf` for fuzzy matching: `brew install fzf`

### Pyenv

I've needed this a couple times to switch between Python versions. This is installed via Homebrew - `brew install pyenv` - and then the following is added to `zshrc`:

```
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

Then restart the shell.
