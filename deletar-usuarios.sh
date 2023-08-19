#!/bin/bash

echo "Remove Pastas..."

sudo rmdir /publico

sudo rmdir /adm

sudo rmdir /ven

sudo rmdir /sec

echo "Removendo Grupos..."

sudo groupdel GRP_ADM

sudo groupdel GRP_VEN

sudo groupdel GRP_SEC

echo "Remover Usuarios..."
echo "-----------------------------------------"
echo "Usuarios ADMINSTRATIVO"
sudo userdel -f  Carlos
sudo userdel -f Maria
sudo userdel -f Joao 
sudo userdel -f Thanos # -c "Usuario 4" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
echo "-----------------------------------------"
echo "Usuarios VENDAS"
sudo userdel -f Debora # -c "Usuario 5" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo userdel -f Sebastiana # -c "Usuario 6" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo userdel -f Roberto # -c "Usuario 7" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo userdel -f Thor # -c "Usuario 8" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
echo "-----------------------------------------"
echo "Usuarios SECRETARIA"
sudo userdel -f Josefina # -c "Usuario 9" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo userdel -f Amanda # -c "Usuario 10" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo userdel -f Rogerio # -c "Usuario 11" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo userdel -f Odin # -c "Usuario 12" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
echo "------------------------------------------"

