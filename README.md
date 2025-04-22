# Dotfiles

These are the instructions to get my OS working.
These instructions are only to recreate my system in a new machine in case something goes wrong and I need a fresh start.

> This Repo is mainly to reproduce my `EndevourOS`, but it also include legacy config files for Debian based `PopOS` if I ever go back.

## Core Programs

This programs are not included in the fresh install of `EndevourOS`. So, manual installation is needed.

#### Google Chrome (Browser)

```bash
yay -S google-chrome
```
> Works out-of-the-box. No need to fix issues with autofill.

In my case I also uninstalled Firefox:

```bash
sudo pacman -Rsn firefox
```

#### Wezterm (Terminal)

```bash
yay -S wezterm
```
> It is not needed to make it work, but it works best in company of `picom`. Install it properly from pacman.

#### Flameshot: For Screenshots

```bash
sudo pacman --sync flameshot
```

> TODO: Eventually this run from the following file: 

## ZSH

```bash
sudo pacman -S zsh
chsh -s $(which zsh)
```

> First command install zsh, the second one makes `ZSH` the default Shell.


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
git clone git@github.com:datacubeR/.datacuber.git
```
Once the repo is cloned is just a matter of stowing my configurations with the following command:

```bash
cd .datacuber
stow .
```
This should restore my configurations to the correct location using symlinks.

## System Installations

Despite I have spent enough time configuring my system, it is still likely that some dependencies are gonna need to be installed. This is a list of the software that I use and that I need to install:

- `zsh`
- Plugins:
    - `oh-my-zsh` (not sure if it is needed)
    - `zsh-autosuggestions`
    - `zsh-syntax-highlighting`
- `starship`
- `polybar`
- `rofi`
- Plugins
    - ![`rofi-themes-collection`](https://github.com/newmanls/rofi-themes-collection)
    - ![`rofi-bluetooth`](https://github.com/nickclyde/rofi-bluetooth)
    - ![`rofi-power-menu`](https://github.com/jluttine/rofi-power-menu)
    - ![`rofi-wifi-menu`](https://github.com/ericmurphyxyz/rofi-wifi-menu)
- `wezterm`
- `yazi`
- `Fira Code Nerd Font`: As my Font and Icons for system and Terminal.

Additionally I depend on specific Linux System Applications such as:

- `lxappearance`: For theme and icon configuration.
- `pactl`: For audio control.
- `playerctl`: For media control.
- `bluetoothctl`: For bluetooth control.
- `brightnessctl`: For brightness control.
- `feh`: For setting wallpapers.
- `picom`: For transparency and shadows (not ever installed in Debian Systems)
- `xrandr`: For screen configuration.
- `scrot`: For screenshots.


Other applications that I can potentially use: `xbacklight`, `dunst`.

## Applications

Some of the Applications that I need to install because are part of my daily use are:

* `miniconda`: Super important for my Python Enviroments.
* `Google Chrome`
* `GIMP`
* `git`
* `quarto`
* `Spotify`
* `VSCode`
* `Zathura`
* `Zed`
* `Zoom`
* `Zotero`


## Special Configs

Some configs need to be done manually and it may change depending on the OS I'm using. Some of them are the following:

### Google Chrome
To get access to my keyring autofill and password manager I need to modify my `google-chrome.desktop` file modifying the `Exec` line to look like this:

```bash
Exec=/usr/bin/google-chrome-stable --password-store=gnome-libsecret
```

> Important:
> This may change for other OS, other options that could eventually work are `--password-store=basic` or `--password-store=gnome`. Another option is:  `--incognito`. The thing is I can't remember where I modified this. So I need to check in case is needed.

### Shell Scripts

All the Shell Scripts I need to run needs to have execution permissions. To give them execution permissions I need to run the following command:

```bash
chmod +x <script_name>
```

## Useful commands that I don't want to forget.

> Can't remember why I used it
```bash
usermod -aG video ${USER}
```

> Useful to find google-chrome.desktop file.
```bash
sudo nano /usr/share/applications/google-chrome.desktop
```

> Useful to set Zathura as default PDF viewer
```bash
xdg-mime default org.pwmt.zathura.desktop application/pdf
```

> Useful to find the class of a window needed for i3 configuration
```bash
xprop | grep WM_CLASS
```
