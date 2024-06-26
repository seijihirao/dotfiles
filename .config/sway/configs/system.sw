# reload the configuration file
bindsym $mod+Shift+c reload

# restart inplace (preserves your layout/session, can be used to upgrade sway)
bindsym $mod+Shift+r restart

# power options
bindsym Control+Mod1+Delete mode "poweroff"
mode "poweroff" {
    bindsym Return  exec systemctl poweroff
    bindsym Tab     mode "restart"
    bindsym Escape  mode "default"
}
mode "restart" {
    bindsym Return  exec systemctl reboot
    bindsym Tab     mode "poweroff"
    bindsym Escape  mode "default"
}

# idle options
for_window [class=".*"] inhibit_idle fullscreen
for_window [app_id=".*"] inhibit_idle fullscreen

exec swayidle -w \
	timeout $timeout-screen 'swaymsg "output * power off"' \
    resume 'swaymsg "output * power on"' 


# dbus
exec dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=sway
