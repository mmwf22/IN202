#!/bin/bash
echo "Create a new user"
echo "Username?: "
read -r username
echo "User in sudo group?[Y/n]"
read -r sudogroup
while true; do
    if getent group Microsoft; then
        useradd -g Microsoft -m -s /bin/bash "${username}"
        sudo passwd
        if "${sudogroup}" "==" "y"; then
            usermod -aG sudo "${username}"
        fi       
        echo "Do you want to end?[Y/n]"
        read -r end 
        if "${end}" "==" "y"; then
            break
        fi

    else
        groupadd Microsoft
        useradd -g Microsoft -m -s /bin/bash "${username}"
        sudo passwd
        if "${sudogroup}" "==" "y"; then
            usermod -aG sudo "${username}"
        fi
        echo "Do you want to end?[Y/n]"
        read -r end 
        if end "==" "y"; then
            break
        fi
    fi
    

done

