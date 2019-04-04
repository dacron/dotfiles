# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
function ssh() {
  if [ $TERM = tmux -o $TERM = tmux-256color -o $TERM = screen -o $TERM = screen-256color ]; then
    tmux set-option allow-rename off 1>/dev/null
    tmux rename-window "$(echo $* | rev | cut -d ' ' -f 1 | rev | cut -d . -f 1 | cut -d @ -f 2)"
    command ssh "$@"
    tmux set-option allow-rename on 1>/dev/null
    tmux set-window-option automatic-rename "on"
    tmux set-option allow-rename off 1>/dev/null
  else
    command ssh "$@"
  fi
}
