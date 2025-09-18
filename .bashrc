# ~/.bashrc

# If not running interactively, don’t do anything
[[ $- != *i* ]] && return

# Aliases
alias grep='grep --color=auto'
alias bitwarden='nohup /usr/bin/bitwarden-desktop >/dev/null 2>&1 & disown'

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Android SDK setup
if [ -d /opt/android-sdk ]; then
    export ANDROID_HOME="/opt/android-sdk"
    export PATH="$PATH:$ANDROID_HOME/tools/bin"
    export PATH="$PATH:$ANDROID_HOME/platform-tools"
    export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
    export PATH="$PATH:$ANDROID_HOME/emulator"
fi
