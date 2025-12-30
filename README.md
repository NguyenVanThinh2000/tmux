git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

Add this to kitty config if using tmux with kitty
#: Send Shift+Enter as escape sequence
map shift+enter send_text all \x1b[13;2u
