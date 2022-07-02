# NOTE: you can use vars with $<var> and ${<var>} as long as the str is double quoted: ""
# WARNING: hex colors can't contain capital letters

# --> Catppuccin
thm_bg="#1e1e28"
thm_fg="#dadae8"
thm_cyan="#c2e7f0"
thm_black="#15121c"
thm_gray="#332e41"
thm_magenta="#c6aae8"
thm_pink="#e5b4e2"
thm_red="#e38c8f"
thm_green="#b1e3ad"
thm_yellow="#ebddaa"
thm_blue="#a4b9ef"
thm_blue="#a4b9ef"
thm_orange="#f9c096"
thm_black4="#575268"

# --> Connection status icons
set -g @online_icon ""
set -g @offline_icon ""

# --> Spotify icons
set -g @spotify_playing_icon ""
set -g @spotify_paused_icon "栗"

# --> Battery icons
set -g @batt_icon_charge_tier8 ''
set -g @batt_icon_charge_tier7 ''
set -g @batt_icon_charge_tier6 ''
set -g @batt_icon_charge_tier5 ''
set -g @batt_icon_charge_tier4 ''
set -g @batt_icon_charge_tier3 ''
set -g @batt_icon_charge_tier2 ''
set -g @batt_icon_charge_tier1 ''
set -g @batt_icon_status_charged ''
set -g @batt_icon_status_charging ''
set -g @batt_icon_status_discharging ''

# ----------------------------=== Theme ===--------------------------

# status
set -g status-position top
set -g status "on"
set -g status-bg "${thm_bg}"
set -g status-justify "left"
set -g status-left-length "100"
set -g status-right-length "100"

# messages
set -g message-style fg="${thm_cyan}",bg="${thm_gray}",align="centre"
set -g message-command-style fg="${thm_cyan}",bg="${thm_gray}",align="centre"

# panes
set -g pane-border-style fg="${thm_black4}"
set -g pane-active-border-style fg="${thm_blue}"

# windows
setw -g window-status-activity-style fg="${thm_fg}",bg="${thm_bg}",none
setw -g window-status-separator ""
setw -g window-status-style fg="${thm_fg}",bg="${thm_bg}",none

# --------=== Statusline

set -g status-left ""
set -g status-right "#[fg=$thm_green,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_green,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] #{music_status} #{artist} - #{track} #{?client_prefix,#[fg=$thm_red],#[fg=$thm_blue]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_blue]}#[fg=$thm_bg]#{battery_icon_status} #[fg=$thm_fg,bg=$thm_gray] #{battery_percentage} #[fg=$thm_red,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_red,nobold,nounderscore,noitalics]ﲾ #[fg=$thm_fg,bg=$thm_gray] #{cpu_icon} #{cpu_percentage} #{?client_prefix,#[fg=$thm_red],#[fg=$thm_blue]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_blue]}#[fg=$thm_bg]#{battery_icon_status} #[fg=$thm_fg,bg=$thm_gray] #{online_status} #[fg=$thm_blue,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_blue,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] %Y-%m-%d %H:%M #[fg=$thm_blue,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_blue,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] %H:%M #{?client_prefix,#[fg=$thm_red],#[fg=$thm_blue]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_blue]}#[fg=$thm_bg] #[fg=$thm_fg,bg=$thm_gray] #S "

# --> Individual lines to make editing easier

# --> #[fg=$thm_pink,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_pink,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] #W

# --> #[fg=$thm_green,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_green,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] #{music_status} #{artist} - #{track}

# --> #[fg=$thm_blue,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_blue,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] %Y-%m-%d %H:%M

# --> #[fg=$thm_blue,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_blue,nobold,nounderscore,noitalics] #[fg=$thm_fg,bg=$thm_gray] %H:%M

# --> #[fg=$thm_red,bg=$thm_bg,nobold,nounderscore,noitalics]#[fg=$thm_bg,bg=$thm_red,nobold,nounderscore,noitalics]ﲾ #[fg=$thm_fg,bg=$thm_gray] #{cpu_icon} #{cpu_percentage}

# --> #{?client_prefix,#[fg=$thm_red],#[fg=$thm_blue]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_blue]}#[fg=$thm_bg]#{battery_icon_status} #[fg=$thm_fg,bg=$thm_gray] #{battery_percentage}

# --> #{?client_prefix,#[fg=$thm_red],#[fg=$thm_blue]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_blue]}#[fg=$thm_bg]#{battery_icon_status} #[fg=$thm_fg,bg=$thm_gray] #{online_status}

# --> #{?client_prefix,#[fg=$thm_red],#[fg=$thm_blue]}#[bg=$thm_gray]#{?client_prefix,#[bg=$thm_red],#[bg=$thm_blue]}#[fg=$thm_bg] #[fg=$thm_fg,bg=$thm_gray] #S "

# --------------------------------------------

# current_dir
setw -g window-status-format "#[fg=$thm_bg,bg=$thm_blue] #I #[fg=$thm_fg,bg=$thm_gray] #{b:pane_current_path} "
# setw -g window-status-current-format "#[fg=$thm_bg,bg=$thm_orange] #I #[fg=$thm_fg,bg=$thm_bg] #{b:pane_current_path} "

# parent_dir/current_dir
# setw -g window-status-format "#[fg=colour232,bg=colour111] #I #[fg=colour222,bg=colour235] #(echo '#{pane_current_path}' | rev | cut -d'/' -f-2 | rev) "
setw -g window-status-current-format "#[fg=colour232,bg=colour208] #I #[fg=colour255,bg=colour237] #(echo '#{pane_current_path}' | rev | cut -d'/' -f-2 | rev) "

# --------=== Modes
setw -g clock-mode-colour "${thm_blue}"
setw -g mode-style "fg=${thm_pink} bg=${thm_black4} bold"
