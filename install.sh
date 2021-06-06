#colors
nam='\033[0;31m'
ver='\033[0;32m'
com='\033[0;35m'
NC='\033[0m'
#about me
echo -e "**************************************"
echo -e "* unofficial BeamMP Server installer *"
echo -e "*            by ${nam}LiLZora${NC}              *"
echo -e "*               ${ver}V.0.5${NC}                *"
echo -e "**************************************"
sleep 0.5
#Installs everything
install_all(){
  wget https://beammp.com/server/BeamMP_Server.zip
  unzip BeamMP_Server.zip
  rm BeamMP-Server.exe
  rm BeamMP_Server.zip
  chmod +x BeamMP-Server-linux
  screen -AmdS install_temp ./BeamMP-Server-linux
  wget https://github.com/LiLZora-lut/unofficial-BeamMP-Server-installer/releases/download/install_part/server.sh
  chmod +x server.sh
  echo ⠀
  echo -e "before you start the server you have to edit the server.cfg with ${com}nano Server.cfg${NC} so that you can enter your authkey."
  echo ⠀
  sleep 1
  echo ⠀
  echo -e "then you can start the server with ${com}./server.sh start${NC}."
  echo ⠀
  sleep 1
}
#Installs only the server script
install_script(){
  wget https://github.com/LiLZora-lut/unofficial-BeamMP-Server-installer/releases/download/install_part/server.sh
  chmod +x server.sh
  sleep 1
  echo ⠀
  echo -e "then you can start the server with ${com}./server.sh start${NC}."
  echo ⠀
  sleep 1
}
#Installs only the BeamMP server
install_server(){
  wget https://beammp.com/server/BeamMP_Server.zip
  unzip BeamMP_Server.zip
  rm BeamMP-Server.exe
  rm BeamMP_Server.zip
  chmod +x BeamMP-Server-linux
  screen -AmdS install_temp ./BeamMP-Server-linux
  sleep 1
  echo ⠀
  echo -e "before you start the server you have to edit the server.cfg with ${com}nano Server.cfg${NC} so that you can enter your authkey."
  echo ⠀
  sleep 1
}
#About the script
about(){
  echo -e "This is a non-official script to download beammp and also to run a server that is online 24/7. If you don't trust this script you can also just delete it with ${com}./rm install.sh${NC}"
}
#Query if something is installed
  read -p "Are you sure you have wget, unzip, screen and liblua5.3 installed? for help type h: " yn
  case $yn in
      [Yy]* ) ;;
      [Nn]* ) exit;;
      [Hh]* )
      echo ⠀
      echo run as root "apt install wget screen liblua5.3-dev unzip -y" to be sure
      echo ⠀;;
      * ) echo "Please answer yes , no or help.";;
  esac
#Query what should be done
while true; do
    echo "What do you want to do
    1. Install only the BeamMP server
    2. Only the server management script
    3. Install both
    4. About this script"
    read -p "So?: " yn
    case $yn in
        [1]* ) install_server; exit;;
        [2]* ) install_script; exit;;
        [3]* ) install_all; exit;;
        [4]* ) about;;
        * ) echo "Please answer 1, 2 or 3.";;
  esac
done
