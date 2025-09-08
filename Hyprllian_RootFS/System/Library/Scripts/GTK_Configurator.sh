# Automatically configure GTK according to Hyprland's set variables.
mkdir -p ~/.config/gtk-3.0
mkdir -p ~/.config/gtk-4.0

Settings=$(cat << EOF
# Adellian GTK Auto-Configuration
[Settings]
gtk-theme-name=$1
gtk-icon-theme-name=$2
gtk-font-name=SF Compact Display 10
gtk-cursor-theme-name=$3
gtk-cursor-theme-size=$4
gtk-toolbar-style=GTK_TOOLBAR_ICONS
gtk-toolbar-icon-size=GTK_ICON_SIZE_SMALL_TOOLBAR
gtk-button-images=1
gtk-menu-images=1
gtk-enable-event-sounds=1
gtk-enable-input-feedback-sounds=1
gtk-xft-antialias=1
gtk-xft-hinting=1
gtk-xft-hintstyle=hintnone
gtk-xft-rgba=rgb
gtk-application-prefer-dark-theme=0
EOF
)

printf "Configured new GTK Settings:\n$Settings\n"
printf "$Settings" > ~/.config/gtk-3.0/settings.ini
printf "$Settings" > ~/.config/gtk-4.0/settings.ini