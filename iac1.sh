
#!/usr/bin/bash


#script de criação de usuários através do bash

echo "criando diretórios . . ."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "criando grupos de usuários . . ."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "criando usuários e adicionando aos grupos . . ."
 #grupo ADM
useradd carlos -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria  -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
 #grupo VEN
useradd debora -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
 #grupo SEC
useradd josefina -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -d /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Criando e atribuindo permissões aos diretórios. . ."
#todas permissões ao root
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
#especificando cada permissão a cada grupo, nota: todos os usuários estão apenas com permissões
#de cada grupo e pasta pertencente
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim de script . . ."



# /\
