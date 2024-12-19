# Dotfiles

These are the instructions to install my dotfiles on my system. This instructions are only to recreate my system in a new machine in case something goes wrong and I need a fresh start.

> This a works in progress and it can be changing as a build intructions. My idea is to make it usable for Debian based systems if I ever go back to Ubuntu or `Pop!_OS`, but I want to make it work on Arch based systems as well (such as `EndeavourOS`).

## My System

![](my_desktop.png)

## i3 Window Manager

For starters, no matter which OS I use I will use I3 Windows Manager, which can be installed with the following command:

```bash
## For Debian based systems
sudo apt install i3
```

```bash
## For Arch based systems
sudo pacman -S i3
```

> This should be my blueprint for my system, but I will be adding more configurations as I go.

## GNU Stow

Most of the configuration files should be recovered by cloning this repo and using GNU Stow to symlink my files to the correct location. 

To install GNU Stow I need to run the following command:

```bash
## For Debian based systems
sudo apt install stow
```

```bash
## For Arch based systems
sudo pacman -S stow
```

After this I should clone this repo using: 

```bash
git clone xxxx
```
Once the repo is cloned is just a matter of stowing my configurations with the following command:

```bash
cd .datacuber
stow .
```
This should restore my configurations to the correct location using symlinks.

## Installations 

Despite I have spent enough time configuring my system, it is still likely that some dependencies are gonna need to be installed. This is a list of the software that I use and that I need to install:

- `zsh`
    - Plugins:
    - `oh-my-zsh`
    - `zsh-autosuggestions`
    - `zsh-syntax-highlighting`
- `starship`
- `polybar`
- `rofi`
- `wezterm`
- `rofi-bluetooth`
- `rofi-power-menu`
- `rofi-wifi`
