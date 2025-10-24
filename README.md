# Installation Arch Linux

run: cd ~

run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git

run: cd MyHyprlandConfigArch

run: sudo sh install.sh

run: sudo rm -rf ~/.config/hypr

run: mv hypr ~/.config/

run: sudo rm -rf ~/.config/waybar

run: mv waybar ~/.config/

run: mkdir ~/Downloads

run: mv ecatherina-farias-teste-2-3299932364.jpg ~/Downloads

# Installation NixOS
run: cd ~

run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git

run: cd MyHyprlandConfigArch

Could you please paste this into your NixOS configuration file, located at /etc/nixos/configuration: 
```
  environment.systemPackages = with pkgs; [
  vim
  nano
  neovim
  git
  thunderbird
  hicolor-icon-theme
  adwaita-icon-theme
  desktop-file-utils
  xdg-utils
  flatpak
  lxappearance
  qt6ct
  libsForQt5.qt5ct
  gsettings-desktop-schemas
  dejavu_fonts
  liberation_ttf
  fira-code
  hack-font
  jetbrains-mono
  noto-fonts
  noto-fonts-emoji
  nerd-fonts.fira-code
  nerd-fonts.hack
  nerd-fonts.jetbrains-mono
  alsa-utils
  pavucontrol
  upower
  acpi
  brightnessctl
  playerctl
  neofetch
  xorg.xorgserver
  xorg.xinit
  wayland
  libdrm
  xorg.libX11
  libxkbcommon
  libinput
  jsoncpp
  glib
  pango
  hyprland
  swaynotificationcenter
  wlr-randr
  grim
  slurp
  hyprlock
  hyprpaper
  waybar
  discord
  steam
  obs-studio
  firefox
  kitty
  rofi
  nautilus
  openrgb
  ffmpeg
  ffmpegthumbnailer
  unzip
  unrar
  p7zip
  python3
  python3Packages.pip
  nodejs
  vscode
  networkmanager
  networkmanagerapplet
  jq
  bluez 
  blueman
  bluez-tools
  gnumake
  cmake
  ninja 
  pkg-config
  gcc
  dconf 
  gtk3 
  docker
  docker-compose
  docker-buildx
];

```


run: sudo rm -rf ~/.config/hypr

run: mv hypr ~/.config/

run: sudo rm -rf ~/.config/waybar

run: mv waybar ~/.config/

run: mkdir ~/Downloads

run: mv ecatherina-farias-teste-2-3299932364.jpg ~/Downloads

# Configuring
Wallpapers will not work right out of the box. Run hyprctl monitors all, then copy your monitor name and paste it in line monitor: of ~/.config/hypr/hyprpaper.conf

edit ~/.config/hypr/hyprland.conf to edit your hyprland conf

# WARNING

PULSEAUDIO WILL NOT WORK. PLEASE USE PIPEWIRE

# New features
will add laptop support (soon) 

# a quick look
<img width="1920" height="1080" alt="screenshot-2025-08-29_16-21-17" src="https://github.com/user-attachments/assets/d14e88f3-1d61-44da-8c71-7b2b4b5621e0" />
<img width="1920" height="1080" alt="screenshot-2025-08-29_18-46-29" src="https://github.com/user-attachments/assets/2d772651-d0c6-4e2b-94ef-68effd994373" />




