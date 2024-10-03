#!/bin/bash

get_actual_user(){
    local user=${SUDO_USER:-$USER}
    echo "$user"
}

install_script() {
    echo "Installing wallflow in /usr/local/bin/..."
    
    local user=$(get_actual_user)
    local user_home=$(eval echo ~$user)
    
    sudo cp ./src/wallflow.sh /usr/local/bin/wallflow

    sudo chmod +x /usr/local/bin/wallflow

    mkdir -p "$user_home/.config/wallflow"
    mkdir -p "$user_home/.local/share/wallflow/history"

    cp ./src/config.json "$user_home/.config/wallflow/config.json"

    sudo chown -R "$user" "$user_home/.config/wallflow"
    sudo chown -R "$user" "$user_home/.local/share/wallflow/history"

    echo "Installation completed! Try executing wallflow --help"
}


uninstall_script() {    
    echo "Uninstalling wallflow..."

    local user=$(get_actual_user)
    local user_home=$(eval echo ~$user)

    sudo rm /usr/local/bin/wallflow
    sudo rm -rf "$user_home/.config/wallflow"
    sudo rm -rf "$user_home/.local/share/wallflow"

    echo "Wallflow completely removed!"
}

# Check if install.sh was executed as sudo
if [ "$EUID" -ne 0 ]; then
    echo "Please execute install.sh as sudo."
    exit 1
fi

# Check if is installing or uninstalling wallflow
case "$1" in
    --install)
        install_script
        ;;
    --uninstall)
        uninstall_script
        ;;
    *)
        echo "Usage: $0 {--install|--uninstall}"
        exit 1
        ;;
esac
