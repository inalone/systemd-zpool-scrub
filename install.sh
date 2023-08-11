#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Script must be ran with 1 argument: the name of the ZFS pool to be activated"
	exit 1
fi

sudo install -m 644 -o root -g root zpool-scrub@.service /etc/systemd/system
sudo install -m 644 -o root -g root zpool-scrub@.timer /etc/systemd/system

sudo systemctl daemon-reload
sudo systemctl enable --now "zpool-scrub@$1.timer"
