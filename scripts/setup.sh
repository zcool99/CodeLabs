echo
echo "Welcome to The IoT Learning Initiative CodeLabs Playground"
echo

# Projects

if [ "$1" == "ChichenItza" ]; then
  cd ChichenItza/setup
  sh setup.sh
fi

if [ "$1" == "Acat" ]; then
  cd Gods/Acat/setup
  sh setup.sh
fi

if [ "$1" == "Chicanna" ]; then
  cd Chicanna/setup
  sh setup.sh
fi

if [ "$1" == "Chacmultun" ]; then
  cd Chacmultun/setup
  sh setup.sh
fi

if [ "$1" == "Coba" ]; then
  cd Coba/setup
  sh setup.sh
fi

echo
echo "Happy The IoT Learning Initiative CodeLabs Playground'ing!"
echo
