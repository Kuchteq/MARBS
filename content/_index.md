---
title: "MARBS"
layout: single
---

{{< img src="/pix/MarbsTux.svg" class=normal >}}

MARBS is an efficient shell script that will install a fully-featured, modern, wayland tiling window manager-based meta-desktop environment on any Arch or [Artix](https://artixlinux.org) Linux distros, without any of the routine of manual post-install processes and configuration (mostly).

## Three types of MARBS users

Is MARBS for you? Probably yes. I don't know how else you would've found this site. The script is for three types of people:

1. People who already know their stuff and just want to automate installing a system without doing the boring stuff you've done a million times.
2. LARBS users and those postponing the migration from Xorg to Wayland.
3. Novices who want to use and learn about a hackerman computer setup like those in the movies for either efficiency or looking cool.


No actual phonies allowed though.
The goal of the system for novices is helping you understand how a good Unix system works and how it is modified.
I give huge amounts of documentation for this, but this is not a hand-holding desktop environment that does things automatically for you.
Instead, you realize how easy it is to set things up automatically yourself.

## Installation

On a fresh installation of Arch Linux or Artix Linux, run the following:

```fish
curl -LO marbs.kuchta.dev/marbs.sh
sh marbs.sh
```

MARBS will then guide you through installation, which is typically relatively snappy. 

Note that the MARBS scripts will not partition any drives or wipe anything, **but** when it deploys the dotfiles, it will overwrite any preexisting files: e.g. the MARBS bashrc will replace your old bashrc, etc. To avoid even this risk, you can tell MARBS to install for a new username and nothing will be overwritten.

## First steps inside the system

Once you have installed MARBS and logged out, you see that logging in on TTY1 brings you to the graphical environment. This is the thing! The power is all but within your fingertips to launch any program, do your coding, organize files, enjoy a movie or do literally anything! Virtually no mouse required. To get started on doing so:
### [🎥Watch the MARBS first steps video ](https://youtu.be/AC7SW1FREF8)


## Programs

Here are the main programs, all with extra information here:

- [dwl](dwl) -- the main graphical environment
- [lf](/lf) -- file manager
- [foot](/foot) -- the terminal
- [zsh](/zsh) -- the shell
- [keyd](/keyd) -- keyboard remapping daemon
- [Librewolf](/librewolf) -- browser
- [dwlb + someblocks](/statusbar) -- statusbar
- [zathura](/zathura) -- pdf reader
- [mpv](/mpv) -- video player
- [imv](/imv) -- image viewer
- [neomutt](/neomutt) -- email
- [ncmpcpp](/ncmpcpp) -- music
- [newsboat](newsboat) -- RSS feeds and news
- [htop](htop) -- to look cool in screencaps... err... system monitor

## Learning the system is fun and easy!

The beginner's guide/video only covers the basis You can figure out about the system in a lot of different ways:

- [Get the PDF cheat sheet bundle](/extra/marbs_bundle.zip) containing documents with keybindings for all the programs. Unzip it using `unzip marbs_bundle.zip`.
- The illustrative videos on [Mariusz's YouTube channel](https://www.youtube.com/@kuchteq/).
- The many illustrative videos on [Luke Smith's YouTube channel](https://youtube.com/lukesmithxyz).
- The documentation on the <a href="https://github.com/Kuchteq/MARBS">Github</a> page.
- By just installing it and diving in!

## No un-features

- No proprietary software or spyware.
- No snaps or flatpaks or Mac-lite garbage. GNU/Linux the way it's supposed to be.
- No branding cringe. Once you run MARBS, you have **your own** system, not mine!

## Extensions!
Everyone has their own workflow and uses for their computer. MARBS has been written by a software developer and some aspects of the system have been specifically adjusted to that purpose, such as the neovim config. However, the system otherwise tries to be workflow agnostic, installing only the minimal viable set of utilities to be usable for everyday things see the [programs section](#programs) or the [full list of installed software by the MARBS script](/progs.csv).

MARBS extensions are a way to further adjust the installation to fit some particular needs. In their most basic form, they install extra software that you would need to anyway install. Some other ones though configure that software and do more advanced things. Extensions are standalone scripts and can be easily installed using curl (see individual extension page for exact url). Currently, available extensions include:
- [code developer](/code_dev)
