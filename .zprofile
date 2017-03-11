[[ -f ~/.zshrc ]] && . ~/.zshrc

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

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
