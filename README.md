# My Personal Dotfiles
These are my personal dotfiles for various applications and tools that I use on a daily basis. They are intended to be used on macOS, although some configurations are for windows devices.

## Installation

To use these dotfiles on your own system, follow these steps:

1. Clone this repository:

```
git clone https://github.com/[your-username]/dotfiles.git
```

2. Change into the `dotfiles` directory:

```
cd dotfiles
```

3. Run the installation script:

```
./install.sh
```

The installation script will create symbolic links for each configuration file in the appropriate locations, and also install any necessary packages using `brew` and `scoop`.

## Configuration

### Fish

My fish configuration is located in `~/.config/fish/config.fish`. It includes some useful aliases and functions, as well as a custom prompt.

### iTerm2

My iTerm2 configuration is stored in `~/.config/iterm2`. It includes a custom color scheme and some keybindings.

### Karabiner

My Karabiner configuration is located in `~/.config/karabiner/karabiner.json`. It includes custom key mappings and shortcuts.

### Neovim

My Neovim configuration is located in `~/.config/nvim/init.vim`. It includes various plugins, key mappings, and settings to improve my productivity. Main framework can be found at [NvChad](https://github.com/NvChad/NvChad)

### PowerShell

My PowerShell configuration is located in `~/.config/powershell/Microsoft.PowerShell_profile.ps1`. It includes aliases and functions to make PowerShell easier to use.

### Scoop

My Scoop configuration is located in `~/.config/scoop`. It includes a list of commonly installed packages that I use on a regular basis.

### Zsh

I also have older configurations for zsh which are stored in `~/.oh-my-zsh/custom`. I used the [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework with added plugins such as [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions).

### VS Code

My VS Code extensions are listed in `vscode-extensions.txt` file. However, since I started using GitHub-VS Code settings sync, this file is now outdated.

## License

This repository is licensed under the MIT license. See the [LICENSE](LICENSE) file for details.
