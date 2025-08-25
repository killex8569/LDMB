#!/bin/bash
set -euo pipefail

config() {
    echo "Creating /opt/LDMB"
    sudo mkdir -p /opt/LDMB

    echo "Setting permissions on LDMB.sh"
    if [[ -f LDMB.sh ]]; then
        chmod +x LDMB.sh
    else
        echo "LDMB.sh not found!"
        exit 1
    fi

    echo "Moving files into /opt/LDMB directory"
    sudo cp LDMB.sh /opt/LDMB/
    sudo cp LDMB_assci.txt /opt/LDMB/ || echo "Warning: LDMB_assci.txt not found"
    sudo cp raid_helper.txt /opt/LDMB/ || echo "Warning: raid_helper.txt not found"
    sudo cp "Software information.txt" /opt/LDMB/ || echo "Warning: Software information.txt not found"
    sudo cp "ldmb" /usr/local/bin || echo "Warning: LDMB CLI File not found"
    sudo chmod +x /usr/local/bin/ldmb


    echo "Installation finished!"
}

config
