# Installation Arch
run: cd ~
run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git
run: cd MyHyprlandConfigArch
run: sudo sh install.sh
run: mv ~/hypr ~/.config/
run: mv ~/waybar ~/.config/

# Configering
wallpapers will not work right out of the box run hyprctl monitors all then copy your monitor name and past it in line monitor: of ~/.config/hypr/hyprpaper.conf
edit ~/.config/hypr/hyprland.conf to edit your hyprland conf

# WARNING
PULSEAUDIO WILL NOT WORK PLEASE USE PIPEWIRE
