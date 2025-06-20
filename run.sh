#!/bin/bash
# Curitiba 17 de Junho de 2025
# Editor Jeverson Dias da Silva
# Youtube/@JCGAMESCLASSICOS
# Script de instalação"ONLINE" do sistema "FIGHTCADE 2"
# sudo wget https://raw.githubusercontent.com/JeversonDiasSilva/Fightcade/main/img/fightcade.png -O /usr/share/emulationstation/themes/es_tem/logo/fightcade.png
url="https://github.com/JeversonDiasSilva/Fightcade/releases/download/v1.0/run.jc" > /dev/null 2>&1
dep="https://github.com/JeversonDiasSilva/streetfighterv/releases/download/v1.0/xdotool" > /dev/null 2>&1

# Nome do script que será baixado
squash=$(basename "$url")

# Baixando o script e a dependência xdotool
wget "$url" -O "$squash" > /dev/null 2>&1
wget "$dep" -O xdotool > /dev/null 2>&1

# Tornando ambos executáveis
chmod +x "$squash"
chmod +x xdotool

# Simula digitação do comando para executar o script
./xdotool type "./$squash"
./xdotool key Return

# Remove o xdotool após o uso
rm -f xdotool
clear
