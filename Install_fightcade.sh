#!/bin/bash
#
# Curitiba 26/08/2024
# Editor Jeverson Dias da Silva /Youtube/@JCGAMESCLASSICOS
# Script vai baixar u Fightcade2 e vai trazer para funcionar de forma STAND-ALONE independente de estar no container arch...

#
#
#

cd ~
wget https://web.fightcade.com/download/Fightcade-linux-latest.tar.gz
tar -xzf Fightcade-linux-latest.tar.gz
rm Fightcade-linux-latest.tar.gz
cd ~/Fightcade/fc2-electron
wget -c https://archive.org/download/lib_20240806/lib.zip
unzip lib.zip
rm lib.zip
cd ..
wget -c https://github.com/mmtrt/WINE_AppImage/releases/download/continuous-staging_ge_proton/wine-staging_ge-proton_8-26-x86_64.AppImage
chmod +x wine-staging_ge-proton_8-26-x86_64.AppImage
ln -s ~/Fightcade/wine-staging_ge-proton_8-26-x86_64.AppImage /usr/bin/wine 
cd emulator
wget https://archive.org/download/Fightcade_Json/json.zip
unzip json.zip
mv ./json/* .
sleep 2
rm -r ~/Fightcade/emulator/json
cd ~/Fightcade
echo '#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Type=Application
Terminal=false
Exec=/userdata/system/Fightcade/Fightcade2.sh
Name=Fightcade
Comment=Fightcade
Categories=Game;Emulator;ArcadeGame
Icon=/userdata/system/Fightcade/fc2-electron/resources/app/icon.png' > Fightcade.desktop
batocera-save-overlay
pcmanfm ~/Fightcade
exit 0
