# zpool-scrub
systemd zpool scrub service and timer

## Fork
This fork
  - adds an install script
  - changes the timer to be ran on the 1th and 15th of each month rather than once a week

## Installation

### Arch Linux
You can use the `systemd-zpool-scrub` AUR package.

### Linux
    install -m 644 -o root -g root zpool-scrub@.service /etc/systemd/system
    install -m 644 -o root -g root zpool-scrub@.timer /etc/systemd/system

    systemctl daemon-reload
    systemctl enable --now zpool-scrub@tank.timer
