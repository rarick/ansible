# ansible
This repo holds ansible playbooks for configuring my environment.

# Roles

## desktop
Installs and configures the desktop environment. Does not do anything machine-specific,
such as generating `/etc/X11/xorg.conf`. Currently only supports installing packages
on Arch Linux via `pacman` and `yay`.

Example of configured items: 
- i3
- picom
- polybar
- pywal
- rofi

## shell-config
Installs and configures applications which are used in the terminal environment. 

Example of configured items:
- inputrc
- ranger
- tmux
- vim
- zsh
