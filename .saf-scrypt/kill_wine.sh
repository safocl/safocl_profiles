if pgrep wine
then
        pkill -9 -f \\.exe
        pkill -9 -f wine*
        pkill -9 -f \\.ex
fi
