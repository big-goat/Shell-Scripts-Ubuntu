cd /home/$USER/Downloads/

echo Instalando Reaper
wget -c https://dlcf.reaper.fm/6.x/reaper625_linux_x86_64.tar.xz  #força os arquivos a serem instalados

echo Descompactando o reaper
tar -xvf reaper625_linux_x86_64.tar.xz
rm reaper625_linux_x86_64.tar.xz
cd reaper_linux_x86_64/
./install-reaper.sh

echo Reaper instalado com sucesso
cd ..
rm -r reaper_linux_x86_64/
                
