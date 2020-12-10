#!/bin/bash

##Removendo travas eventuais do apt##

##sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

## Atualizando Repositório ##

sudo apt update  && sudo apt upgrade -y

echo Indo para pasta de Download
## Download de Programas Externos ##
##mkdir /home/$USER/Downloads/programas

cd /home/$USER/Downloads/

echo Instalando Reaper
wget -c https://dlcf.reaper.fm/6.x/reaper618_linux_x86_64.tar.xz  #força os arquivos a serem instalados

echo Descompactando o reaper
tar -xvf reaper618_linux_x86_64.tar.xz
rm reaper615_linux_x86_64.tar.xz
cd reaper_linux_x86_64/
./install-reaper.sh

echo Reaper instalado com sucesso
cd ..
rm -r reaper_linux_x86_64/

echo Download reaper removido

##sudo dpkg -i *.dep #instala todos os arquivos .deb

##Instalando programas do Repositório##

##sudo apt-add-repository ppa: ##instalando os repositórios

##flatpak install flathub com.obsproject.Studio ##Instala o obs flatpak

echo Instalando Programas

sudo apt install  gparted plank htop vim pcsxr unrar musescore3 gtick -y

echo Instalacao Kicad

sudo add-apt-repository --yes ppa:kicad/kicad-5.1-releases
sudo apt update
sudo apt install --install-recommends kicad -y

echo Kicad Instalado

echo Instalando Wine
##Instalação wine##
sudo dpkg --add-architecture i386
##wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
##sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt install wine -y

echo Wine instalado

echo Instalando Flatpak
##Flatpak##
sudo apt install flatpak gnome-software-plugin-flatpak -y

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo Removendo pacotes obsoletos 

sudo apt autoremove -y

echo Fim do Script

echo Reiniciando o Pc

reboot




