#!/bin/bash
set -euo pipefail

dell() {
    sudo rm -rf /opt/LDMB
    sudo rm -f /usr/local/bin/ldmb
    echo "All files have been deleted :( Thanks for using my software !"
}

uninstall() {
    echo "LDMB will be deleted from this machine (/opt/LDMB ; /usr/local/bin/ldmb), continue ?"
    read -rp "y/N : " choix
    case $choix in
        y|Y) dell ;;
        n|N) echo "Aborting process"; exit 0 ;;
        *) exit 0 ;;
    esac
}



uninstall