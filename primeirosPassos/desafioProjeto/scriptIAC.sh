#!/bin/bash

#Desafio LinuxExperience: Infraestrutura como código

echo Criando os diretórios...
mkdir /publico /adm /ven /sec
echo Finalizado.


echo Criando os grupos...
groupadd GRP_ADM 
groupadd GRP_VEN
groupadd GRP_SEC
echo Finalizado.


echo Criando os usuários e definindo seus grupos...
#A senha padrão será 123 e deverá ser alterada no primeiro acesso.
#Usuários do GRP_ADM
useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd maria -m -c "Maria das Graças" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -c "João do Pé de Feijão" -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

#Usuários do GRP_VEN
useradd debora -m -c "Debora Santos" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana de Jesus" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

#Usuários do GRP_SEC
useradd josefina -m -c "Josefina Araujo" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -m -c "Amanda Buscar" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Faustino" -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC
echo Finalizado.


echo Configurando as permissões dos diretórios...
#Todos os usuários possuem acesso total ao diretório "publico".
#Os usuários possuem permissão total no seu diretorio correspondente.
#Os usuários não terão acesso aos grupos que não pertencem.

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo Finalizado.
echo
echo -----------------------------
echo Script finalizado com sucesso.

