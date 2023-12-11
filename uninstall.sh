if [ -d "~/.room" ]
then 
    rm -rf ~/.room
fi

if test -f "~/.room.zsh"
then
    rm -rf ~/.room.zsh
fi

echo "Bye 😭"

exec $SHELL