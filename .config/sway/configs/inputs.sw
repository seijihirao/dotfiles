##########
#
# KEYBOARD AND MOUSE
#
#

# or input <identifier>
input "type:keyboard" {
    xkb_layout us,br
    xkb_variant intl,abnt2
    xkb_options grp:alt_shift_toggle
}

input "type:touchpad" {
    dwt enabled
    tap enabled
    middle_emulation enabled
}

##########
#
# FUNCTION CONTROLS
#
#


bindsym XF86AudioLowerVolume exec pactl set-sink-volume @DEFAULT_SINK@ -5%
bindsym XF86AudioMute exec pactl set-sink-mute @DEFAULT_SINK@ toggle
bindsym XF86AudioMicMute exec pactl set-source-mute @DEFAULT_SOURCE@ toggle
bindsym XF86MonBrightnessUp exec light -A 5
bindsym XF86MonBrightnessDown exec light -U 5
bindsym XF86AudioPlay exec playerctl play-pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

#screenshot
set $screenshot-filename .local/share/screenshots/Screenshot_$(date '+%Y-%m-%d_%H-%M-%S').png
bindsym $mod+Print mode "screenshot"
mode "screenshot" {
    bindsym 1 exec '$app-screenshot copy area'; mode "default"
    bindsym 2 exec '$app-screenshot copy window'; mode "default"
    bindsym 3 exec '$app-screenshot copy output'; mode "default"
    bindsym 4 exec '$app-screenshot copy screen'; mode "default"
    bindsym Shift+1 exec '$app-screenshot savecopy area   $screenshot-filename'; mode "default"
    bindsym Shift+2 exec '$app-screenshot savecopy window $screenshot-filename'; mode "default"
    bindsym Shift+3 exec '$app-screenshot savecopy output $screenshot-filename'; mode "default"
    bindsym Shift+4 exec '$app-screenshot savecopy screen $screenshot-filename'; mode "default"
    bindsym Return    mode "default"
    bindsym Escape    mode "default"
}
bindsym Print exec '$app-screenshot copy window'
bindsym Shift+Print exec 'grimshot copy output'
bindsym Control+Print exec 'grimshot copy area'
