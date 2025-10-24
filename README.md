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

# Installation NixOS
run: cd ~

run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git

run: cd MyHyprlandConfigArch

Paste this into your config: 
```
  nixpkgs.config.permittedInsecurePackages = [
    "mbedtls-2.28.10"
  ];
environment.systemPackages = with pkgs; [
  # Core editors & tools
  vim
  nano
  neovim
  git
  thunderbird

  # Desktop & appearance
  hicolor-icon-theme
  adwaita-icon-theme
  desktop-file-utils
  xdg-utils
  flatpak
  lxappearance
  qt6ct
  libsForQt5.qt5ct
  gsettings-desktop-schemas

  # Fonts (correct Nix names)
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
  # System & audio
  alsa-utils
  pavucontrol
  upower
  acpi
  brightnessctl
  playerctl
  neofetch
  # Xorg / Wayland base
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

  # Hyprland setup
  hyprland
  swaynotificationcenter
  wlr-randr
  grim
  slurp
  hyprlock
  hyprpaper
  waybar

  # Apps
  discord
  steam
  obs-studio
  firefox
  kitty
  rofi
  nautilus
  openrgb

  # Media tools
  ffmpeg
  ffmpegthumbnailer

  # Compression tools
  unzip
  unrar
  p7zip

  # Programming languages
  python3
  python3Packages.pip
  nodejs


  # Networking
  networkmanager
  networkmanagerapplet

  # Misc utils
  jq
];

```


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
