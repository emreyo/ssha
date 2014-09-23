#!/bin/bash

echo -en "Alias:\n>"
read alias

echo -en "User:\n>"
read user

echo -en "HostName:\n>"
read hostname

echo -en "PubKeyAuth (yes/no):\n"
read pubkey

echo "### ssh alias for $alias ###" >> "$HOME/.ssh/config"
echo -e "Host $alias\nUser $user\nHostName $hostname\nPubkeyAuthentication $pubkey" >> "$HOME/.ssh/config"

echo "alias for $alias added!"

