
if [ $SHELL == "/bin/zsh" ] || [ $SHELL == "/usr/bin/zsh" ]
then
  echo "Installing room..."
  mkdir ~/.room
  cp src/main.py ~/.room/main.py
  cp src/commands_factory.py ~/.room/commands_factory.py
  touch ~/.room.zsh
  echo 'alias room="python ~/.room/main.py"' >> ~/.room.zsh
  echo '[[ ! -f ~/.room.zsh ]] || source ~/.room.zsh' >> ~/.zshrc
  echo "Done!"
  exec $SHELL 
else
  echo "Not suported terminal, install zsh"
  exit 1
fi
