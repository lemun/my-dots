#
# ~/.bash_profile
#

# Source ~/.bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start Hyprland if DISPLAY is unset and the terminal is /dev/tty1
if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]]; then
	exec Hyprland
fi

# Aliases
alias grep='grep --color=auto'
alias bitwarden='nohup /usr/bin/bitwarden-desktop >/dev/null 2>&1 & disown'

# Android SDK setup
if [ -d /opt/android-sdk ]; then
    export ANDROID_HOME="/opt/android-sdk"
    export ANDROID_SDK_ROOT="/opt/android-sdk"
    export PATH="$PATH:$ANDROID_HOME/tools/bin"
    export PATH="$PATH:$ANDROID_HOME/platform-tools"
    export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
    export PATH="$PATH:$ANDROID_HOME/emulator"
fi

## Java
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

