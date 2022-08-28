#!/bin/bash

#Segundo desafio de projeto.

echo "Procurando por atualizações do servidor..."
echo  ------------------------------------------
sudo apt-get update
sudo apt-get upgrade -y
echo "Finalizado."
echo
echo "Instalando o Apache2..."
echo  -----------------------
sudo apt-get install apache2 -y
echo "Finalizado."
echo
echo "Instalando o Unzip..."
echo  ---------------------
sudo apt-get install unzip -y
echo "Finalizado."
echo
echo "Baixando a aplicação web..."
echo  ---------------------------
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Download finalizado."
unzip -o /tmp/main.zip
echo "Copiando os arquivos baixados para a pasta padrão do sistema..."
echo  ---------------------------------------------------------------
cp -R /linux-site-dio-main/* /var/www/html
echo "Finalizado"


