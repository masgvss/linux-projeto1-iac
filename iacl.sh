#!/bin/bash

# Script para criar diretórios, grupos e usuários no Linux Ubuntu

echo "Cria os diretórios na raiz"

mkdir -p /publico
mkdir -p /adm
mkdir -p /ven
mkdir -p /sec

echo "Cria os grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " Cria os usuários e adiciona aos respectivos grupos "

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd  maria  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd  joao  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd  debora  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd  sebastina  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd  roberto  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd  Josefina  -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd  amanda  -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_SEC
useradd  rogerio  -m -s /bin/bash -p $(openssl passwd -crypt Senha123)  -G GRP_SEC

echo " Define as permissões dos diretórios"

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

chown root:root /publico
chmod 755 /publico

echo "Diretórios, grupos e usuários criados com sucesso."