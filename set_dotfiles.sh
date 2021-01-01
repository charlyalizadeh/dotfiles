#!/bin/bash


# bspwm
cp $HOME/.config/bspwm/* ./bspwm/

# sxhkd
cp $HOME/.config/sxhkd/* ./sxhkd/

# bash
cp $HOME/.bashrc ./
cp $HOME/.inputrc ./

# .xinit
cp $HOME/.xinitrc ./

# Xressources
cp $HOME/.Xresources ./

# Neovim
cp -r $HOME/.config/nvim/config/* ./nvim/config/
cp $HOME/.config/nvim/init.vim ./nvim/

# Polybar
# Here I specify which files because my polybar config directory is not always
# clean lol.
cp $HOME/.config/polybar/{launch.sh,config} ./polybar/

# kitty
cp $HOME/.config/kitty/* ./kitty/

# rofi
cp $HOME/.config/rofi/* ./rofi/

# zathura
cp $HOME/.config/zathura/* ./zathura/

# GTK 3
cp $HOME/.config/gtk-3.0/* ./gtk-3.0/

# Wallpaper
cp -r $HOME/Pictures/wallpaper/* ./wallpaper

