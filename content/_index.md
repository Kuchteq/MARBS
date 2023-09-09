---
title: "MARBS"
layout: single
---

{{< img src="/pix/MarbsTux.svg" class=normal >}}

MARBS is an efficient shell script that will install a fully-featured tiling window manager-based system on any Arch or [Artix](https://artixlinux.org) Linux-based system, without any of the routine of manual post-install processes and configuration (mostly).

## Two types of MARBS users

Is MARBS for you? Probably yes. I don't know how else you would've found this site. The script is for three types of people:

1. People who already know their stuff and just want to automate installing a system without doing the boring stuff you've done a million times.
2. LARBS users and those who postpone the migration from Xorg to Wayland
3. Novices who want to use and learn about a leet hackerman computer setup like those in the movies for either efficiency or looking cool.


No actual phonies allowed though.
The goal of the system for novices is helping you understand how a good Unix system works and how it is modified.
I give huge amounts of documentation for this, but this is not a hand-holding distro that does things automatically for you.
Instead, you realize how easy it is to set things up automatically yourself.

## Installation

On a fresh installation of Arch Linux or Artix Linux, run the following:

```fish
curl -LO marbs.kuchta.dev/marbs.sh
sh marbs.sh
```

MARBS will then guide you through installation, which is typically relatively snappy. 

Note that the MARBS scripts will not partition any drives or wipe anything, **but** when it deploys the dotfiles, it will overwrite any preexisting files: e.g. the MARBS bashrc will replace your old bashrc, etc. To avoid even this risk, you can tell MARBS to install for a new username and nothing will be overwritten.

## No un-features

- No proprietary software or spyware.
- No snaps or flatpaks or Mac-lite garbage. GNU/Linux the way it's supposed to be.
- No branding cringe. Once you run MARBS, you have **your own** system, not mine!

## Programs

Here are the main programs, all with extra information here:

- [dwl](/dwm) -- the main graphical environment
- [foot](/st) -- the terminal
- [dwlb](/dwmblocks) -- statusbar
- [zsh](zsh) -- the shell
- [Librewolf](librewolf) -- browser
- [lf](/lf) -- file manager
- [neomutt](/neomutt) -- email
- [abook](/abook) -- extensible address book
- [ncmpcpp](/ncmpcpp) -- music
- [newsboat](newsboat) -- RSS feeds and news
- [htop](htop) -- to look cool in screencaps... err... system monitor
- [mpv](/mpv) -- video player
- imv -- image viewer

## Learning the system is fun and easy!

You can figure out about the system in a lot of different ways:

- The many illustrative videos on [Luke's YouTube channel](https://youtube.com/lukesmithxyz), some of which are easily watchable in MARBS by pressing <kbd>super + F2</kbd>.
- The documentation on the <a href="https://github.com/lukesmithxyz/voidrice">Github</a> page.
- By just installing it and diving in!
