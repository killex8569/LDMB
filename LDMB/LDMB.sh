#!/bin/bash
# FR
#
# LDMB (Linux Disk Manager on Bash) est un outil permettant de créer, gérer, maintenir 
# et assurer la scalabilité des disques Linux de manière simple.
# Créé par Alexandre FAUBLADIER--ANETTE en BTS SIO à l'Institution des Chartreux 
# et étudiant à CPE Lyon en cycle ingénieur.
# Logiciel protégé sous licence APACHE. 
# Merci d'utiliser mon logiciel ! ;)
#
# EN
#
# LDMB (Linux Disk Manager on Bash) is a tool that allows you to easily create, manage, maintain, 
# and scale Linux disks.
# Created by Alexandre FAUBLADIER ANETTE during his BTS SIO at Institution des Chartreux 
# and currently an engineering student at CPE Lyon.
# Software protected under the APACHE License.
# Thank you for using my software! ;)
#
clear

options=( {0..10} )
quit=( {q,Q} )
echo "Bienvenue dans le programme LDMB !"
echo
cat LDMB_assci.txt
echo
echo "Que voulez-vous faire ?"
echo -e "0 - RAID 0\n1 - RAID 1\n2 - RAID 5\n3 - RAID 6\n4 - RAID 10\n5 - Autres\n9 - Software Information"

read -p "Votre choix : " choix

# Vérifi si $choix est dans le tableau options
if [[ ! " ${options[@]} " =~ " $choix " ]]; then
    exec "$0"  # relance le script
elif [ "$choix" = 0 ]; then
    echo "RAID 0"
elif [ $choix = 1 ]; then
    echo "RAID 1"
elif [ $choix = 9 ]; then
    cat "Software information.txt"
    sleep 5
    exec "$0"
elif [ " $choix " = " $quit[@] " ]
fi

