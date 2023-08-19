#!/bin/bash

echo "Criando Pastas..."

sudo mkdir /publico

sudo mkdir /adm

sudo mkdir /ven

sudo mkdir /sec

echo "Criando Grupos..."

sudo groupadd GRP_ADM

sudo groupadd GRP_VEN

sudo groupadd GRP_SEC

echo "Criando Usuarios..."
echo "-----------------------------------------"
echo "Usuarios ADMINSTRATIVO"
sudo useradd Carlos -c "Usuario 1" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd Maria -c "Usuario 2" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd Joao -c "Usuario 3" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd Thanos -c "Usuario 4" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
echo "-----------------------------------------"
echo "Usuarios VENDAS"
sudo useradd Debora -c "Usuario 5" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd Sebastiana -c "Usuario 6" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd Roberto -c "Usuario 7" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd Thor -c "Usuario 8" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
echo "-----------------------------------------"
echo "Usuarios SECRETARIA"
sudo useradd Josefina -c "Usuario 9" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd Amanda -c "Usuario 10" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd Rogerio -c "Usuario 11" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd Odin -c "Usuario 12" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
echo "------------------------------------------"

echo "Criando as Permissões"
echo "-----------------------------"
echo "Criando as Permissões dos Grupos"

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec
echo "-----------------------------------------"
sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec
