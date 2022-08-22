#!/bin/bash

echo "Atualizando o Linux"
apt-get update
apt-get upgrade -y

echo "Instalando o Apache2"
apt-get install apache2 -y
service apache2 restart

echo "Instalando o Unzip e o Wget"
apt-get install unzip -y
apt-get install wget -y

echo "Baixando o site do github"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos para a pasta /var/www/html/"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado"
