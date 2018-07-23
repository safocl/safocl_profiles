#! /bin/bash
mkdir -p .config
cp -rv $HOME/.{bash_profile,bashrc,saf-scrypt,vimrc,Xresources,zprofile,zshrc} .
cp -rv $HOME/.config/{liferea,luastatus,compton.conf,fontconfig,htop,i3} .config/
cp -rv $HOME/.vim .
