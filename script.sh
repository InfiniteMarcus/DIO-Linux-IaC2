#!/bin/bash

echo 'Atualizando pacotes'
apt-get update -y
apt-get upgrade -y

echo 'Instalando dependências'
apt-get install apache2 -y
apt-get install unzip -y

echo 'Baixando repositório e descompactando'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 

echo 'Copiando arquivos para apache'
cd linux-site-dio-main
cp -R * /var/www/html/
