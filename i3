# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# startup commands
exec --no-startup-id xbacklight -set 30%
exec --no-startup-id pactl set-sink-volume 0 50%
exec_always --no-startup-id pulseaudio-equalizer disable
exec --no-startup-id sh ~/scripts/screens.sh
exec_always --no-startup-id feh --bg-scale /home/peri/.wallpaper.jpg
exec_always --no-startup-id xset r rate 220 40
# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod1

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below. ISO 10646 = Unicode
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, if you need a lot of unicode glyphs or
# right-to-left text rendering, you should instead use pango for rendering and
# chose a FreeType font, such as:
# font pango:DejaVu Sans Mono 10
font pango:Source Code Pro for Powerline 10

# thin borders
for_window [class="^.*" ] border pixel 1

# gaps
gaps inner 0
gaps outer 0

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
# bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+Return exec gnome-terminal

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
bindsym $mod+d exec rofi -show run -lines 4 -bg "#1b2b34" -fg "#c0c5ce" -hlbg "#65737e" -hlfg "#d8dee9" -bc "#151718" -padding 480 -width 100 -line-margin 5 -font System\ San\ Francisco\ Display\ 16 -eh 2
bindsym $mod+Tab exec rofi -show window -bg "#1b2b34" -fg "#c0c5ce" -hlbg "#65737e" -hlfg "#d8dee9" -bg-active "#6699cc" -fg-active "#1b2b34" -hlbg-active "#6699cc" -hlfg-active "#fac863" -bc "#151718" -padding 480 -width 100 -line-margin 5 -font System\ San\ Francisco\ Display\ 16 -eh 2
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym Mod4+1 workspace 1
bindsym Mod4+2 workspace 2
bindsym Mod4+3 workspace 3
bindsym Mod4+4 workspace 4
bindsym Mod4+5 workspace 5
bindsym Mod4+6 workspace 6
bindsym Mod4+7 workspace 7
bindsym Mod4+8 workspace 8
bindsym Mod4+9 workspace 9
bindsym Mod4+0 workspace 10

# move focused container to workspace
bindsym Mod4+Shift+1 move container to workspace 1
bindsym Mod4+Shift+2 move container to workspace 2
bindsym Mod4+Shift+3 move container to workspace 3
bindsym Mod4+Shift+4 move container to workspace 4
bindsym Mod4+Shift+5 move container to workspace 5
bindsym Mod4+Shift+6 move container to workspace 6
bindsym Mod4+Shift+7 move container to workspace 7
bindsym Mod4+Shift+8 move container to workspace 8
bindsym Mod4+Shift+9 move container to workspace 9
bindsym Mod4+Shift+0 move container to workspace 10

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart``
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

set $bg-color #2f343f
set $inactive-bg-color #2f343f
set $text-color #f3f4f5
set $inactive-text-color #676E7D

# window colors
#                       border       background   text         indicator
client.focused          #4c7899      #CDD3DE      #ffffff      #CDD3DE
client.focused_inactive #333333      #5f676a      #ffffff      #5f676a
client.unfocused        #333333      #222222      #888888      #222222
client.urgent           #2f343a      #900000      #ffffff      #900000
client.placeholder      #000000      #0c0c0c      #ffffff      #0c0c0c

client.background       #ffffff
# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        position bottom
        font pango:FontAwesome, Icons 9
        status_command i3blocks -c /home/peri/.config/i3/i3blocks.conf
        colors {
                statusline #D8DEE9
                background #343D46
                focused_workspace  #383B4A #747C84 #F3F4F5
                active_workspace   #747C84 #383B4A #F3F4F5
                inactive_workspace #383B4A #383B4A #F3F4F5
                urgent_workspace   #747C84 #747C84 #F3F4F5
        }
        tray_output none
}

# Pulse Audio controls
bindsym XF86AudioRaiseVolume exec pactl set-sink-volume 0 +5% # increase sound volume
bindsym XF86AudioLowerVolume exec pactl -- set-sink-volume 0 -5% # decrease sound volume
bindsym XF86AudioMute exec pactl set-sink-mute 0 toggle # mute sound

# Sreen brightness controls
bindsym XF86MonBrightnessUp  exec xbacklight -inc 10 # increase screen brightness
bindsym XF86MonBrightnessDown exec xbacklight -dec 10 # decrease screen brightness

# Touchpad controls
bindsym XF86TouchpadToggle exec /home/peri/scripts/toggletouchpad.sh # toggle touchpad

# Media player controls
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

# toggle backlight on and off using the Pause key
bindsym Pause exec ~/.backlight.sh

# lock screen command
bindsym Mod1+Ctrl+Delete exec i3lock -ndc 1b2b34
