#! /bin/bash
mkdir -p .config/nvim
cp -rv $HOME/.{bash_profile,bashrc,saf-scrypt,Xresources,zprofile,zshrc} .
cp -rv $HOME/.config/{liferea,luastatus,compton.conf,fontconfig,htop,i3} .config/
cp -rv ~/.config/nvim/{*.vim,colors,*.json} ./.config/nvim
cp -rv ~/.config/alacritty ./.config
#cp -rv $HOME/.vim .
