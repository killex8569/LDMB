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

# LDMB - Linux Disk Manager on Bash
# Auteur : Alexandre FAUBLADIER-ANETTE
# Licence : Apache 2.0
set -euo pipefail
clear

# ==========================
# Fonctions utilitaires
# ==========================

pause() {
    read -rp "Appuyez sur [Entrée] pour continuer..."
}

invalid_option() {
    echo "Option invalide."
    pause
    main_menu
}

# ==========================
# Fonctions principales
# ==========================

raid0() {
    clear
    echo "=== RAID 0 ==="
    echo "Configuration RAID 0 sélectionnée."
    # Ici tu ajouteras la logique pour créer ton RAID 0
    pause
    main_menu
}

raid1() {
    clear
    echo "=== RAID 1 ==="
    echo "Configuration RAID 1 sélectionnée."
    # Ici tu ajouteras la logique RAID 1
    pause
    main_menu
}

raid5() {
    clear
    echo "=== RAID 5 ==="
    echo "Configuration RAID 5 sélectionnée."
    # Ici tu ajouteras la logique RAID 5
    pause
    main_menu
}

raid6() {
    clear
    echo "=== RAID 6 ==="
    echo "Configuration RAID 6 sélectionnée."
    # Ici tu ajouteras la logique RAID 6
    pause
    main_menu
}

raid10() {
    clear
    echo "=== RAID 10 ==="
    echo "Configuration RAID 10 sélectionnée."
    # Ici tu ajouteras la logique RAID 10
    pause
    main_menu
}

autres() {
    clear
    echo "=== Autres options ==="
    echo "Exemple : montage manuel, formatage disque, etc."
    # Ici tu ajoutes les sous-options
    pause
    main_menu
}

software_info() {
    clear
    echo "=== Informations sur LDMB ==="
    cat "Software information.txt"
    pause
    main_menu
}

sys_info() {
    clear
    echo -e "1 - lsblk\n2 - Espace de stockage\n3 - fichier fstab\n9 - Retour main menu\nq - Quitter"
    read -rp "Que souhaitez vous observer : " system
    echo
    case $system in
        1) lsblk ;;
        2) df -h;;
        3) cat /etc/fstab ;;
        9) main_menu ;;
        q|Q) echo "Merci d'avoir utilisé LDMB !" ; sleep 1 ; exit 0;;
        *) sys_info ;;
    esac
    pause
    sys_info
}

raid_helper() {
    clear
    echo "Raid Helper will help you to choose your type of RAID with the number of disque you have !"
    sleep 3
    cat "raid_helper.txt"
    pause
    main_menu
}

# ==========================
# Menu principal
# ==========================

main_menu() {
    clear
    echo "Bienvenue dans LDMB (Linux Disk Manager on Bash)"
    echo
    cat LDMB_assci.txt
    echo
    echo "Que voulez-vous faire ?"
    echo -e "0 - RAID 0\n1 - RAID 1\n2 - RAID 5\n3 - RAID 6\n4 - RAID 10\n5 - Autres\n6 - information system\n7 - need help for raid ?\n9 - Informations sur le logiciel\nq - Quitter LDMB"
    echo

    read -rp "Votre choix : " choix
    case $choix in
        0) raid0 ;;
        1) raid1 ;;
        2) raid5 ;;
        3) raid6 ;;
        4) raid10 ;;
        5) autres ;;
        6) sys_info ;;
        7) raid_helper ;;
        9) software_info ;;
        q|Q) echo "Merci d'avoir utilisé LDMB !"; sleep 1 ; exit 0 ;;
        *) invalid_option ;;
    esac
}

# Lancement du script principal
main_menu
