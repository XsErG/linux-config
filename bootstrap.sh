#!/bin/sh
# Backup exists directories
[ -d ~/.linux-config   ] && mv ~/.linux-config   ~/.linux-config.old
[ -d ~/.config/awesome ] && mv ~/.config/awesome ~/.config/awesome.old
[ -d ~/.fonts          ] && mv ~/.fonts          ~/.fonts.old

# Backup exists files
[ -f ~/.Xresources     ] && mv ~/.Xresources     ~/.Xresources.old
[ -f ~/.gitconfig      ] && mv ~/.gitconfig      ~/.gitconfig.old
[ -f ~/.xinitrc        ] && mv ~/.xinitrc        ~/.xinitrc.old
[ -f ~/.xprofile       ] && mv ~/.xprofile       ~/.xprofile.old
[ -f ~/.profile        ] && mv ~/.profile        ~/.profile.old
[ -f ~/.gemrc          ] && mv ~/.gemrc          ~/.gemrc.old

git clone https://github.com/XsErG/linux-config ~/.linux-config && \
  ln -s ~/.linux-config/awesome    ~/.config/awesome  && \
  ln -s ~/.linux-config/fonts      ~/.fonts           && \
  ln -s ~/.linux-config/gitconfig  ~/.gitconfig       && \
  ln -s ~/.linux-config/xinitrc    ~/.xinitrc         && \
  ln -s ~/.linux-config/xprofile   ~/.xprofile        && \
  ln -s ~/.linux-config/Xresources ~/.Xresources      && \
  ln -s ~/.linux-config/profile    ~/.profile         && \
  ln -s ~/.linux-configgemrc       ~/.gemrc
