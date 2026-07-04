#!/bin/bash
# Curitiba 17 de Junho de 2025
# Editor Jeverson Dias da Silva
# Youtube/@JCGAMESCLASSICOS
# Script de instalação"ONLINE" do sistema "FIGHTCADE 2"

#cd /tmp
url="https://github.com/JeversonDiasSilva/Fightcade/releases/download/v1.0/run.jc" > /dev/null 2>&1
dep="https://github.com/JeversonDiasSilva/streetfighterv/releases/download/v1.0/xdotool" > /dev/null 2>&1
logo=fightcade.png
url_logo="https://raw.githubusercontent.com/JeversonDiasSilva/Fightcade/main/img/fightcade.png"
squash=$(basename "$url")


# Baixando o script e a dependência xdotool
wget "$url" -O "$squash" > /dev/null 2>&1
wget "$dep" -O xdotool > /dev/null 2>&1
wget "$url_logo" -O /usr/share/emulationstation/themes/es-theme-carbon/art/logos/$logo

# Tornando ambos executáveis
chmod +x "$squash"
chmod +x xdotool
./xdotool type "./$squash"
./xdotool key Return
#echo "" > /usr/bin/wine
# Remove o xdotool após o uso
rm -f xdotool
#rm -f run.jc
clear
