#!/bin/bash

echo "Infraestrutura como codigo - Linux DIO"

echo ""

sleep 3

echo "criando diretorios - /publico - /adm - /ven - /sec"

mkdir /publico
sleep 1
mkdir /adm
sleep 1
mkdir /ven
sleep 1
mkdir /sec
sleep 1

echo "Criando Grupos para os usuarios"
echo ""
sleep 3

groupadd GRP_ADM
sleep 1
groupadd GRP_VEN
sleep 1
groupadd GRP_SEC
sleep 1

echo "Criando Usuários..."
echo ""
sleep 3

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sabastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Permissoes dos diretorios..."
sleep 3

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

sleep 2
echo "Fim..."
