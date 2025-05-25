#!/bin/bash

echo "Hi!.. Welcome to our package management services!"
sleep 2
echo "What do you want to do today?"
sleep 2
echo "Do you want to install a package or remove it?"
sleep 2

# -n 1 reads exactly one character
# -p displays the prompt message
read -n 2 -p $"To install, press I. To remove, press R :\n " prompt1
prompt="${prompt1^^}"
echo -e "\n You entered: $prompt" # \n for a new line after the prompt, -e to interpret it

# Use [[ ]] for string comparisons as it's more flexible and safer than [ ]
# Use || (OR) operator to check if prompt is 'I' OR 'R'
if [[ "$prompt" == "I" || "$prompt" == "R" ]]; then
    read -p "Type the package name: " pkg
    if [ "$pkg" == "" ]; then
    echo " Bhagggg..."
    exit
    else
    sleep 1
    echo "You entered: $pkg"
    sleep 2
    fi

    # Nested if-elif to handle install or remove
    if [[ "$prompt" == "I" ]]; then
        echo "Installing $pkg..."
        sleep 2
        sudo apt install "$pkg" # Always quote variables to handle spaces or special characters
        echo "$pkg installation complete. Exit code : $?"
    elif [[ "$prompt" == "R" ]]; then
        echo "Removing $pkg..."
        sleep 2
        sudo apt purge "$pkg" # Use purge for complete removal, or remove for just uninstalling
        echo "$pkg removal complete. Exit code : $?"
    fi
else # This 'else' corresponds to the initial 'if [[ "$prompt" == "I" || "$prompt" == "R" ]]'
    echo "Bhaggg...."
fi
