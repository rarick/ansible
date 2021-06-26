fdisk, partitions, mkfs

mount, fstab, chroot

installed packages:
#- alacritty
#- alsa-utils
- amducode
#- asoundconf
- base-devel
- discord
- dosfstools
- efibootmgr
#- feh
# - git
#- gnu-free-fonts
- grub
#- i3-gaps
#- i3status
- iwd
# - man-db
# - neofetch
- nvidia
- openssh
- pkgconf
#- pulseaudio
#- pulseaudio-alsa
#- python-i3ipc
#- python-pywal
# - ranger
#- rofi
- spotifyd
- steam
# - tmux
# - unp
# - unzip
# - vim
#- xclip
#- xdg-utils
#- xorg-server
#- xorg-xinit
#- xorg-xinput
#- xss-lock
# - zsh

yay packages:
#- alternating-layouts-git
- google-chrome
# - ttf-meslo-nerd-font-powerlevel10k
#- picom-jonaburg-git
#- polybar
- proton-ge-custom
#- python-colorthief
- spotify-tui
#- xcwd
#- vim-plug

made config files:
- /etc/localtime
- /etc/adjtime
- /etc/locale.gen
- /etc/locale.conf
- /etc/vconsole.conf
- /etc/hostname
- /etc/hosts

run locale-gen

enable systemd services:
- systemd-networkd.service
- iwd
- pulseaudio (USER)
- spotifyd (USER)

configured networking in /etc/systemd/network

configure boot loader (grub)
- /etc/default/grub
- /boot/grub/grub.cfg

create user, assign groups, make home

configure /etc/X11/xorg.conf

configure ~/.xinitrc

configure ~/.profile

Install font

Install yay

Install+configure polybar

Configure $HOME/.config/i3/config

Configure $HOME/.config/spotifyd

Configure $HOME/.config/systemd/user/spotifyd.service

Configure $HOME/.config/alacritty/alacritty.yml

Install oh-my-zsh

Install + configure powerlevel10k

Install ranger_devicons (ensure depth 1, and echo after)

Set default audio sink/source for pulseaudio

# TODO:
## Cosmetics
- i3
- polybar
- zsh
- rofi
- ranger, ranger+power10k
- Display manager (login)
- grub theme

## Interface
- change repeat keystroke rate and delay
- zsh

## Learn
- zsh
