---
title: "foot"
date: 2023-01-19T10:02:07-05:00
---

foot terminal emulator

{{< img src=/pix/foot.png caption="Fruity Footie" class=normal >}}

## Running

Press <kbd>alt + space</kbd> for a basic terminal window.

## Documentation

`man foot foot-ctlseqs`
The actual terminal that is run by default is a wrapper script called footie, that has to do with client-server architecture.

## Bindings

- <kbd>shift + pageup/pagedown</kbd> -- scroll up or down in the terminal history.
- <kbd>ctrl + shift + r </kbd> -- enter search mode.
- <kbd>ctrl + k </kbd> -- ( in search mode ) go to next result.
- <kbd>ctrl + j </kbd> -- ( in search mode ) go to previous result.
- <kbd>ctrl + w </kbd> -- ( in search mode ) extend selection by a word.
- <kbd>enter </kbd> -- ( in search mode ) copy selected text to foot clipboard.
- <kbd>ctrl + shift + i </kbd> -- paste text from foot clipboard.
- <kbd>ctrl + shift + u </kbd> -- detect url and OSC 8 links in the terminal (then handled by bemenuhandler)
- <kbd>ctrl + shift + c</kbd> -- copy selected text to system clipboard.
- <kbd>ctrl + shift + v</kbd> -- paste from system clipboard.

## Readline

Note that readline will use vim bindings by default.
Technically this is not part of `foot`, but people get it confused.
If you don't like it, remove the `bindkey -v` line from the [zsh](/zsh) configuration.

