##########
#
# APPEARENCE
#
#
for_window [class="^.*"] border pixel 2
gaps inner 10
gaps outer 10
smart_gaps off
smart_borders off

for_window [window_role="pop-up"] floating enable;border normal
for_window [window_role="task_dialog"] floating enable;border normal
for_window [app_id="kitty"] opacity 0.8

###########
#
# WORKSPACES
#
#

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10
bindsym $mod+d workspace $wsNull
bindsym Mod1+Tab workspace next
bindsym Mod1+Shift+Tab workspace prev


# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10

##########
#
# WINDOWS
#
#

# kill focused window
bindsym Mod1+F4 kill

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right
bindsym $mod+Control+space mode_toggle

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# move focused window (vim style)
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# move focused workspace
bindsym $mod+Control+Left move workspace to output left
bindsym $mod+Control+Down move workspace to output down
bindsym $mod+Control+Up move workspace to output up
bindsym $mod+Control+Right move workspace to output right

# move focused workspace (vim style)
bindsym $mod+Control+h move workspace to output left
bindsym $mod+Control+j move workspace to output down
bindsym $mod+Control+k move workspace to output up
bindsym $mod+Control+l move workspace to output right

# split in horizontal orientation
bindsym $mod+Mod1+h split h

# split in vertical orientation
bindsym $mod+Mod1+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# enter fullscreen mode for the focused container
bindsym $mod+Shift+f fullscreen toggle global

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+Shift+s layout stacking
bindsym $mod+Shift+w layout tabbed
bindsym $mod+Shift+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# focus the parent container
bindsym $mod+a focus parent

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        
        bindsym j resize grow left 10 px or 10 ppt
        bindsym k resize grow down 10 px or 10 ppt
        bindsym l resize grow up 10 px or 10 ppt
        bindsym ccedilla resize grow right 10 px or 10 ppt

        bindsym Shift+j resize shrink left 10 px or 10 ppt
        bindsym Shift+k resize shrink down 10 px or 10 ppt
        bindsym Shift+l resize shrink up 10 px or 10 ppt
        bindsym Shift+ccedilla resize shrink right 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize grow left 10 px or 10 ppt
        bindsym Down resize grow down 10 px or 10 ppt
        bindsym Up resize grow up 10 px or 10 ppt
        bindsym Right resize grow right 10 px or 10 ppt

        bindsym Shift+Left resize shrink left 10 px or 10 ppt
        bindsym Shift+Down resize shrink down 10 px or 10 ppt
        bindsym Shift+Up resize shrink up 10 px or 10 ppt
        bindsym Shift+Right resize shrink right 10 px or 10 ppt

        # float on right edge
        bindsym Control+Right sticky enable; floating enable; border none; resize set 480 270; move absolute position 886 498;
        bindsym Control+Shift+Right sticky disable; floating enable; border none; resize set 480 270; move absolute position 890 500;
        
        # float on left edge
        bindsym Control+Left sticky enable; floating enable; border none; resize set 480 270; move absolute position 0 500;
        bindsym Control+Shift+Left sticky enable; floating enable; border none; resize set 480 270; move absolute position 0 500;

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"

}

bindsym $mod+r mode "resize"

# update screens (extended, mirror, etc)
mode "screen" {
        # These bindings trigger as soon as you enter the screen mode
        bindsym h exec "swaymsg 'output HDMI-A-1 pos -$monitor-w 0' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym j exec "swaymsg 'output HDMI-A-1 pos 0 $monitor-h' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym k exec "swaymsg 'output HDMI-A-1 pos 0 -$monitor-h' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym l exec "swaymsg 'output HDMI-A-1 pos $monitor-w 0' ; swaymsg 'output eDP-1 pos 0 0'"

        # same bindings, but for the arrow keys
        bindsym Left exec "swaymsg 'output HDMI-A-1 pos -$monitor-w 0' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym Down exec "swaymsg 'output HDMI-A-1 pos 0 $monitor-h' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym Up exec "swaymsg 'output HDMI-A-1 pos 0 -$monitor-h' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym Right exec "swaymsg 'output HDMI-A-1 pos $monitor-w 0' ; swaymsg 'output eDP-1 pos 0 0'"
        
        # mirror
        bindsym space exec "swaymsg 'output HDMI-A-1 pos 0 0' ; swaymsg 'output eDP-1 pos 0 0'"
        bindsym Delete output eDP-1 toggle
        
        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+p mode "screen"

# Startup state
exec "swaymsg 'output HDMI-A-1 pos -1920 0' ; swaymsg 'output eDP-1 pos 0 0'"
