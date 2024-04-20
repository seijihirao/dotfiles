# SEIJI DOTFILES
![Sway](https://img.shields.io/badge/sway-current-blue?style=flat-square)
![i3](https://img.shields.io/badge/i3-2023-green?style=flat-square)
![XFCE4](https://img.shields.io/badge/xfce-2017-red?style=flat-square)
![GNOME](https://img.shields.io/badge/gnome-2017-red?style=flat-square)

Hello!!! And wellcome to my dotfiles!

Here are listed my shared configuration files 😃
Feel free to use something or send me pull requests/feedbacks.

## Preview

### Sway

Desktop | Workspace 1 | Workspace 0
:-:|:-:|:-:
![Workspace Web](.local/share/screenshots/preview/sway/[2024-04]desktop.png) | ![Workspace Web](.local/share/screenshots/preview/sway/[2024-04]ws1.png) | ![Workspace Web](.local/share/screenshots/preview/sway/[2024-04]ws10.png)

### i3

Desktop | Workspace 1 | Workspace 0
:-:|:-:|:-:
![Workspace Web](.local/share/screenshots/preview/i3/[2018-08]desktop.png) | ![Workspace Web](.local/share/screenshots/preview/i3/[2018-08]ws1.png) | ![Workspace Web](.local/share/screenshots/preview/i3/[2023-09]ws10.png)

### XFCE4

Desktop | Workspace 1 | Workspace 2
:-:|:-:|:-:
![Workspace Web](.local/share/screenshots/preview/xfce/[2017-02]desktop.png) | ![Workspace Web](.local/share/screenshots/preview/xfce/[2017-02]ws1.png) | ![Workspace Web](.local/share/screenshots/preview/xfce/[2017-02]ws2.png)

### GNOME 3

Desktop | Menu
:-:|:-:
![Workspace Web](.local/share/screenshots/preview/gnome/[2017-02]desktop.png) | ![Workspace Web](.local/share/screenshots/preview/gnome/[2017-02]menu.png)

## Apps used

List of apps used by default on each environment, listed `-` if there is no app is used, or if the default app from WM is used.

/ | Sway | i3 | XFCE4 | Gnome
:-:|:-:|:-:|:-:|:-:
Bar | waybar | polybar | - | -
Menus | fuzzel | rofi | - | -
Notifier | mako | xfce4-notifyd | - | -
Wallpaper | - | variety | variety | variety
Network Manager | nm-applet | nm-applet | - | -
Sysmenu | - | rofi | - | -
Layout Manager | - | -| devilspie | -
Terminal | kitten | xfce4-terminal | - | -
Filemanager | ranger | ranger | pcmanfm | thunar


## Setup/Config files

### i3

To select startup apps and workspace capturing go to file

`.config/i3/scripts/startup`

### Polybar

Setup the environment variables located at

`.config/bash/devices.sh`

## My Apps

My apps are located at `.config/.apps` but they might be too many,
I need to do a cleanup

Just run `$ sudo xargs pacman -S --needed --noconfirm < .config/.apps`

