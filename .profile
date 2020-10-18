export SHELL='zsh'
export ZDOTDIR="$HOME/.zsh"
# source $ZDOTDIR/.zshrc

# captive popup http://172.17.0.2/


# https://www.dannyguo.com/blog/remap-caps-lock-to-escape-and-control/#:~:text=For%20Ubuntu%2FGNOME%2C%20I%20use,under%20the%20%E2%80%9CTyping%E2%80%9D%20tab.&text=To%20keep%20it%20working%20through,running%20a%20script%20on%20startup.
# http://www.economyofeffort.com/2014/08/11/beyond-ctrl-remap-make-that-caps-lock-key-useful/
setxkbmap -option "caps:ctrl_modifier"
xcape -e "Caps_Lock=Escape;Control_L=Escape;Control_R=Escape"
