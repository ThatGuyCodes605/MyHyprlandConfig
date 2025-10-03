#!/bin/bash
# Arch Linux bootstrap dependency installer (Hyprland + Waybar ready)
# Run with: sudo ./install-deps.sh

set -e

if [ "$EUID" -ne 0 ]; then
    echo "Please run as root (sudo ./install-deps.sh)"
    exit 1
fi

echo "==> Updating system..."
pacman -Syu --noconfirm

echo "==> Installing essential build tools..."
pacman -S --needed --noconfirm base-devel git wget curl

echo "==> Installing common runtime dependencies..."
sudo pacman -S --needed \
xorg xorg-xinit wayland \
gtk3 gtk4 qt5-base qt6-base \
alsa-utils pavucontrol \
ttf-dejavu ttf-liberation noto-fonts \
python python-pip nodejs npm \
unzip unrar p7zip \
mesa vulkan-intel vulkan-radeon \
libdrm libx11 libxkbcommon libinput \
jsoncpp glib2 pango \
hyprland swaync wlr-randr grim slurp \
hyprlock hyprpaper \
discord steam obs-studio waybar \
brightnessctl playerctl \
networkmanager network-manager-applet \
upower acpi \
gsettings-desktop-schemas qt6ct qt5ct \
lxappearance \
ttf-fira-code ttf-hack ttf-jetbrains-mono noto-fonts-emoji nerd-fonts firefox \
kitty rofi nautilus jq openrgb ffmpeg ffmpegthumbnailer


systemctl enable --now pulseaudio.service
# Flatpak OBS Studio (optional, for latest version)
flatpak install flathub com.obsproject.Studio librewolf

# Install AUR packages if yay is installed
if command -v yay &> /dev/null; then
    echo "==> Installing AUR packages..."
    yay -S --needed visual-studio-code-bin swaync
else
    echo "==> yay not found. Install yay manually to install AUR packages."
    echo "Run as your normal user:"
    echo "cd /tmp && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm"
fi

echo "==> System is now bootstrapped with Hyprland + Waybar dependencies! 🎉"
