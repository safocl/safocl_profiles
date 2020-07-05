[[ -f ~/.zshrc ]] && . ~/.zshrc
export QT_QPA_PLATFORMTHEME="qt5ct"
#export LC_MESSAGES="en_US.UTF-8"
#setleds -D +num </dev/tty1
#export XDG_DATA_HOME=/home/safff/Desktop


ln -s $HOME/.trizen-tmp /tmp/trizen-$(users)

#создание папки для кеша фаерфокса
mkdir /tmp/mozilla

#создание символической ссылки /tmp/dumps на /dev/null
#для steam, что бы не заполнял дампами ошибок оперативку
n='/dev/null'
f='/tmp/dumps'
if [[ -d $f ]] 
  then
    rm -rf $f
    ln -s $n $f
  else
    ln -s $n $f
fi
unset n f


#pulseaudio -k &
#urxvtd &
#pamixer --set-volume 100 &
#pamixer --source 1 --set-volume 45 &


#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
