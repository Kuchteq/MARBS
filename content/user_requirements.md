---
title: "Create user"
date: 2024-10-09T01:55:19-05:00
---

The new MARBS installer no longer uses the root account for installation. One has to run it as a regular user with sudo privileges. After a [fresh installation of Arch/Artix Linux](https://wiki.archlinux.org/title/Installation_guide), first make sure in /etc/sudoers file line: **wheel ALL=(ALL:ALL) ALL** (roughly at line 121) is uncommented allowing the group wheel users run sudo privileged commands. Remove the # symbol in front of it to do uncomment. Next, as root run:
```fish
useradd -m -G wheel yournewusername
passwd yournewusername
su -l yournewusername
```
- The first line creates the user called yournewusername (adjust it to the one you want).
- Second prompts for a password for that user
- Third changes the user to that newly created one and changes to its home directory

Having done those steps, you can now run get the installer and run it with:
```fish
curl -LO marbs.kuchta.dev/marbs.sh
sh marbs.sh
```
