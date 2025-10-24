# Installation Arch

run: cd ~

run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git

run: cd MyHyprlandConfigArch

run: sudo sh install.sh

run: sudo rm -rf ~/.config/hypr

run: mv hypr ~/.config/

run: sudo rm -rf ~/.config/waybar

run: mv waybar ~/.config/

run: mkdir ~/Downloads

run: mv ecatherina-farias-teste-2-3299932364 ~/Downloads

# Installation NixOS
run: cd ~

run: git clone https://github.com/ThatGuyCodes605/MyHyprlandConfigArch.git

run: cd MyHyprlandConfigArch

Paste this into your config (replace "user" with your username): 
```
  # Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];
  # Allow specific insecure packages
  nixpkgs.config.permittedInsecurePackages = [
    "mbedtls-2.28.10"
  ];
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  services.flatpak.enable = true;
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  programs.hyprland.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
hardware.graphics = {
  enable = true;
  enable32Bit = true;
  extraPackages = with pkgs; [
    amdvlk
    driversi686Linux.amdvlk
  ];
};

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.user = {
    isNormalUser = true;
    description = "user";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };



  # List services that you want to enable:
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


 # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?
  xdg.icons.enable = true;
  xdg.mime.enable = true;
  xdg.portal.enable = true;
}

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
