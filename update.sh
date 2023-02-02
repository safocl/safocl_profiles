#! /bin/bash

rm -rf .{config,shell,bash_profile,bashrc,Xresources,zprofile,zshrc}
mkdir -p .config/nvim
cp -rv $HOME/.{shell,bash_profile,bashrc,Xresources,zprofile,zshrc} .
cp -rv $HOME/.config/{fontconfig,i3} .config/
cp -rv ~/.config/nvim/{*.lua,colors,lua} ./.config/nvim
#cp -rv ~/.config/alacritty ./.config
#cp -rv $HOME/.vim .
