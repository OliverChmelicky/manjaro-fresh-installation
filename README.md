# RUN
`chmod 777 freshInstallation.sh`
`./freshInstallation.sh`

## Configure ZSH
https://medium.com/tech-notes-and-geek-stuff/install-zsh-on-arch-linux-manjaro-and-make-it-your-default-shell-b0098b756a7a
plugins=(
git
history-substring-search
colored-man-pages
zsh-autosuggestions
zsh-syntax-highlighting
fzf-zsh-plugin
)


## Guake
### Guake Autostart
Tweaks autostart didn't work well. This method worked but maybe there is a better option.
/etc/xdg/autostart
```create file```
```
[Desktop Entry]
Type=Application
Exec=guake        
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_CA]=Guake Autostart    
Name=Guake Autostart
```

### Guake hotkey
Guake hotkey can be set in Guake preferences. But it does not work for windows using wayland app the binding is not recognized. For this reason there has to be a new custom binding greated with the command `guake -t`.


Download "Extensions" and there you can click on extensions which to turn on.
[removable Drive menu, auto move windows]

Shortcuts: 
ctrl+g - "guake -t"
ctrl+b - "chromium"
super + f - "nautilus" Launchers->home folder  command 
super + q - close window (automatically)



TODO install Golang
Testing extensions if they are good:
Removable drive menu, clipboard indicator 

NetSpeed:
TODO - find pre manjaro
