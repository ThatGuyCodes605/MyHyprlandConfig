# Installation Arch

run: cd ~

run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git

run: cd MyHyprlandConfigArch

run: sudo sh install.sh

run: sudo rm -rf ~/.config/hypr

run: mv hypr ~/.config/

run: mv waybar ~/.config/

run: mkdir ~/Downloads

run: mv ecatherina-farias-teste-2-3299932364 ~/Downloads


# Configuring
Wallpapers will not work right out of the box. Run hyprctl monitors all, then copy your monitor name and paste it in line monitor: of ~/.config/hypr/hyprpaper.conf

edit ~/.config/hypr/hyprland.conf to edit your hyprland conf

# WARNING

PULSEAUDIO WILL NOT WORK. PLEASE USE PIPEWIRE

# New features
will add laptop support (soon) 
