#!/bin/bash

echo Apagando toda a configuração...
echo -------------------------------
echo
rm -rf publico adm ven sec
echo Diretórios apagados.
userdel -r -f carlos
userdel -r -f maria
userdel -r -f joao
userdel -r -f debora
userdel -r -f debora
userdel -r -f sebastiana
userdel -r -f roberto
userdel -r -f josefina
userdel -r -f amanda
userdel -r -f rogerio
echo Usuários apagados.
groupdel -f carlos
groupdel -f maria
groupdel -f joao
groupdel -f debora
groupdel -f debora
groupdel -f sebastiana
groupdel -f roberto
groupdel -f josefina
groupdel -f amanda
groupdel -f rogerio
groupdel -f GRP_ADM
groupdel -f GRP_VEN
groupdel -f GRP_SEC
echo Grupos apagados.
echo
echo Finalizado.

