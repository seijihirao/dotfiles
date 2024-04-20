##########
#
# BINDINGS
#
#

# App Selector
bindsym $mod+space exec $app-selector --show --show-actions
bindsym Super_R exec $app-selector --show

# task manager
bindsym Control+Shift+Escape exec $app-terminal htop

# start a terminal
bindsym $mod+Return exec $app-terminal tmux

# apps
bindsym $mod+b exec $app-browser
bindsym $mod+Control+b exec $app-browser2
bindsym $mod+i exec $app-ide
bindsym $mod+Control+i exec $app-ide2
bindsym $mod+n exec $app-music
bindsym $mod+e exec $app-filemanager
bindsym $mod+Control+e exec $app-filemanager2

###########
#
# WORKSPACES
#
#

# Open applications on specific workspaces
assign [window_role="^browser$"] $ws1
assign [class="Postman"] $ws1
assign [class="Code - OSS"] $ws2
assign [class="jetbrains-idea"] $ws2
assign [class="jetbrains-webstorm"] $ws2
assign [class="jetbrains-pycharm-ce"] $ws2
assign [class="sun-awt-X11-XWindowPeer"] $ws2
assign [class="sun-awt-X11-XDialogPeer"] $sw2
assign [class="java-lang-Thread"] $sw2
assign [class="Git"] $ws2
assign [class="Trackma-gtk"] $ws3
assign [title="Deluge"] $ws3
for_window [class="Spotify"] move to workspace $ws4
assign [class="Slack"] $ws8
assign [class="Mail"] $ws8
assign [class="Thunderbird"] $ws8
assign [class="main-terminal"] $ws10

###########
#
# STARTUP
#
#

# env
exec --no-startup-id . ~/.config/bash/devices

#
# Background
#

exec $app-networkmanager
exec $app-wallpaper
exec $app-notifier
exec $app-bar

#
# Foreground
#
exec firefox-developer-edition
exec $app-terminal tmux --class="main-terminal"
