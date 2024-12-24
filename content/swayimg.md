---
title: "swayimg"
date: 2024-11-23T11:39:29-05:00
---

swayimg is just a really simple image-viewer. Previously MARBS used [imv](/imv) but due to outdated dependencies and sparse maintainance it got superseded by swayimg.
It is controlled by the keyboard with the vim style keybindings.

## Documentation

`man swayimg` - for general overview of passable cli options 
`man swayimgrc` - for configuration file options

## Running

swayimg is opened automatically when you select a photo file to open from [lf](/lf) or another program.
Obviously you can run it from the command line by running `swayimg file.png`, etc.

## Configuration

- `~/.config/swayimg/config` -- custom key bindings.
