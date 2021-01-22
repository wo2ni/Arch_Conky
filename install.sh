#!/bin/bash
Config_conky() {
    mv -v parrot-monitoring/ ~/.conky/
    mv -v system-monitoring/ ~/.conky/
    chmod +x start_conky.sh 
    mv -v start_conky.sh ~/.conky/
    cat << EOF >> ~/.bashrc
    alias conky='~/.conky/start_conky.sh '
EOF
}

if [ -d ~/.conky ]; then
    Config_conky
else
    mkdir ~/.conky
    Config_conky
fi
