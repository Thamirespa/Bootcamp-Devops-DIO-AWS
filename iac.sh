#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm 
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd ADM_GROUP
groupadd VEN_GROUP
groupadd SEC_GROUP

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM_GROUP 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM_GROUP
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G ADM_GROUP

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G VEN_GROUP
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G VEN_GROUP
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G VEN_GROUP

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G SEC_GROUP
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G SEC_GROUP
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G SEC_GROUP

echo "especificando permissões dos diretprios"

chown root:ADM_GROUP/adm
chown root:VEN_GROUP/ven
chown root:SEC_GROUP/sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando!"





