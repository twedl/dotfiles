
export BASH_SILENCE_DEPRECATION_WARNING=1

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/usr/local/Homebrew/opt/avr-gcc@8/bin:$PATH"

#if [ "$(sysctl -n sysctl.proc_translated)" = "1" ]; then
if [ "$(arch)" = "i386" ]; then
    brew_path="/usr/local/homebrew/bin"
    brew_opt_path="/usr/local/opt"
else
    brew_path="/opt/homebrew/bin"
    brew_opt_path="/opt/homebrew/opt"
fi

export PATH="${brew_path}:${PATH}"






eval "$(starship init bash)"


# BEGIN_KITTY_SHELL_INTEGRATION
if test -e "$HOME/projects/kitty/shell-integration/kitty.bash"; then source "$HOME/projects/kitty/shell-integration/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
