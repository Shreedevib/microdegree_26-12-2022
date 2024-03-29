#!/bin/bash
if [ $# -gt 0 ]; then
    users=$@
    for users in ${users[@]}; do
        EXISTING_USER=$(cat /etc/passwd | grep -i -w $USER | cut -d ":" -f1)
        if [ "$EXISTING_USER" = "${USER}" ]; then
            echo "User with $USER already exists. Try a different Name"
        else
            echo "Lets create a user $USER"
            sudo useradd -m $USER --shell /bin/bash
            SPEC='!@#$%^&*_'
            SPEC_CHAR=$(echo $SPEC | fold -w1 | shuf | head -1)
            passwd=India@${RANDOM}${SPEC_CHAR}
            echo "$user:$passwd" | sudo chpasswd
            passwd -e $USER
            echo $PASSWD
        fi
    done
else
    echo "please enter valid input"
fi

#user_creation.sh testuser1 testuser2 testuser3 testuser4
