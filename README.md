git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

----- Add this to kitty config if using tmux with kitty
#: Send Shift+Enter as escape sequence
map shift+enter send_text all \x1b[13;2u

----- And add this to zshrc

# Handle Shift+Enter key from Kitty terminal

# Create a custom widget for multi-line editing

shift_enter() {
LBUFFER="${LBUFFER}\\
"
}
zle -N shift_enter

# Try multiple escape sequences for better compatibility with tmux

bindkey '^[[13;2u' shift_enter # Kitty CSI u sequence
bindkey '^[^M' shift_enter # Alt+Enter as fallback
bindkey '^[[27;2;13~' shift_enter # Alternative encoding
