nam='\033[0;31m'
ver='\033[0;32m'
com='\033[0;35m'
NC='\033[0m'
echo -e "**************************************"
echo -e "* unofficial BeamMP Server installer *"
echo -e "*            by ${nam}LiLZora${NC}              *"
echo -e "*               ${ver}V.0.4${NC}                *"
echo -e "**************************************"
sleep 0.5
install_server(){
  wget https://beammp.com/server/BeamMP_Server.zip
  unzip BeamMP_Server.zip
  rm BeamMP-Server.exe
  rm BeamMP_Server.zip
  chmod +x BeamMP-Server-linux
  screen -AmdS install_temp ./BeamMP-Server-linux
  wget https://github.com/LiLZora-lut/unofficial-BeamMP-Server-installer/releases/download/0.3/server.sh
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

while true; do
    read -p "Are you sure you have wget, unzip, screen and liblua5.3 installed? for help type h: " yn
    case $yn in
        [Yy]* ) install_server; exit;;
        [Nn]* ) exit;;
        [Hh]* )
        echo ⠀
        echo run as root "apt install wget screen liblua5.3-dev unzip -y" to be sure
        echo ⠀;;
        * ) echo "Please answer yes , no or help.";;
    esac
done
