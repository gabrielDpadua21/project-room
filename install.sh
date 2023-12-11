
if [ $SHELL == "/bin/zsh" ] || [ $SHELL == "/usr/bin/zsh" ]
then
  echo "Installing room..."
  mkdir ~/.room
  cp src/room.sh ~/.room/room.sh 
  touch ~/.room.zsh
  echo 'alias room="bash ~/.room/room.sh room"' >> ~/.room.zsh
  echo 'alias shambles="bash ~/.room/room.sh shambles"' >> ~/.room.zsh
  echo 'alias cs="bash ~/.room/room.sh cs"' >> ~/.room.zsh
  echo 'alias scan="bash ~/.room/room.sh scan"' >> ~/.room.zsh
  echo 'alias att="bash ~/.room/room.sh att"' >> ~/.room.zsh
  echo 'alias rk="bash ~/.room/room.sh rk"' >> ~/.room.zsh
  echo 'alias mes="bash ~/.room/room.sh mes"' >> ~/.room.zsh
  echo 'alias is="bash ~/.room/room.sh is"' >> ~/.room.zsh
  echo 'alias law="bash ~/.room/room.sh law"' >> ~/.room.zsh
  echo '[[ ! -f ~/.room.zsh ]] || source ~/.room.zsh' >> ~/.zshrc
  echo "Done!"
  exec $SHELL 
else
  echo "Not suported terminal, install zsh"
  exit 1
fi
