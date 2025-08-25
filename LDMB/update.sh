#!/bin/bash
set -euo pipefail

make_update() {
    cd /tmp
    rm -rf /tmp/LDMB
    git clone https://github.com/killex8569/LDMB.git
    cd LDMB/LDMB
    chmod +x uninstall.sh ; ./uninstall.sh
    chmod +x install.sh ; ./install.sh
    sudo rm -rf /tmp/LDMB
}


update() {
    clear
    echo "Update LDMB ?"
    read -rp "Y/n : " choix
    case $choix in
        y|Y) make_update ;;
        n|N) echo "Aborting update"; exit 0 ;;
        *) echo "Invalid choice"; sleep 1 ; update ;;
    esac
}

update